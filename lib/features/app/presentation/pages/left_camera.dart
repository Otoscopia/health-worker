import "dart:async";
import "dart:io";

// ignore: depend_on_referenced_packages
import "package:camera_platform_interface/camera_platform_interface.dart";
import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/services.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:ionicons/ionicons.dart";
import "package:styled_widget/styled_widget.dart";

import "package:health_worker/config/themes/colors.dart";
import "package:health_worker/core/exports.dart";
import "package:health_worker/dependency_injection.dart";
import "package:health_worker/features/app/exports.dart";

class LeftCamera extends ConsumerStatefulWidget {
  const LeftCamera({Key? key}) : super(key: key);

  @override
  ConsumerState<LeftCamera> createState() => _CameraState();
}

class _CameraState extends ConsumerState<LeftCamera> {
  /// Stores current state info of the camera.
  // ignore: unused_field
  String _cameraInfo = "Unknown";

  /// Stores list of cameras found on device.
  List<CameraDescription> _cameras = [];

  /// Used to iter through _cameras.
  int _cameraIndex = 0;

  /// Used to store camera ID.
  int _cameraId = -1;

  /// true if camera is initialised, otherwise false.
  bool _initialised = false;

  /// true if video is being recorded, otherwise false.
  bool _recording = false;

  /// true if a timed video is being recorded, otherwise false.
  bool _recordingTimed = false;

  /// true if audio is enabled for recording, otherwise false.
  final bool _recordAudio = true;

  /// sets preview size of the camera, can be null.
  Size? _previewSize;

  /// sets resolution of the preview
  /// initialised to very high i.e. 1920 x 1080.
  final ResolutionPreset _resolutionPreset = ResolutionPreset.veryHigh;

  /// Subscribes to camera error stream.
  StreamSubscription<CameraErrorEvent>? _errorStreamSubscription;

  /// Subscribes to camera closing stream i.e. on dispose.
  StreamSubscription<CameraClosingEvent>? _cameraClosingStreamSubscription;

  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();

    /// Ensures that at first the available cameras are found.
    _fetchCameras();
  }

  @override
  void dispose() {
    /// ends current preview
    _disposeCurrentCamera();

    /// both the streams are canceled and reset to null just in case

    _errorStreamSubscription?.cancel();
    _errorStreamSubscription = null;

    _cameraClosingStreamSubscription?.cancel();
    _cameraClosingStreamSubscription = null;
    super.dispose();
  }

  /// Fetch list of available cameras from camera_windows_plugin
  Future<void> _fetchCameras() async {
    String cameraInfo;
    List<CameraDescription> cameras = [];

    int cameraIndex = 0;

    try {
      cameras = await CameraPlatform.instance.availableCameras();
      if (cameras.isEmpty) {
        cameraInfo = "No available cameras";
      } else {
        cameraIndex = _cameraIndex % cameras.length;
        var camera = cameras[cameraIndex].name.split(" ");
        cameraInfo = "Found camera: ${camera[0]} ${camera[1]}";
      }
    } on PlatformException catch (e) {
      cameraInfo = "Failed to get cameras: ${e.code} : ${e.message}";
    }

    if (mounted) {
      setState(() {
        _cameraIndex = cameraIndex;
        _cameraInfo = cameraInfo;
        _cameras = cameras;
      });
    }
  }

  /// Initialises the camera on device
  Future<void> _initiliaseCamera() async {
    assert(!_initialised);

    if (_cameras.isEmpty) {
      return;
    }

    int cameraId = -1;
    try {
      final int cameraIndex = _cameraIndex % _cameras.length;
      final CameraDescription camera = _cameras[cameraIndex];

      cameraId = await CameraPlatform.instance
          .createCamera(camera, _resolutionPreset, enableAudio: _recordAudio);

      _errorStreamSubscription?.cancel();
      _errorStreamSubscription = CameraPlatform.instance
          .onCameraError(cameraId)
          .listen(_onCameraError);

      _cameraClosingStreamSubscription?.cancel();

      final Future<CameraInitializedEvent> initiliazed =
          CameraPlatform.instance.onCameraInitialized(cameraId).first;

      await CameraPlatform.instance.initializeCamera(
        cameraId,
        imageFormatGroup: ImageFormatGroup.unknown,
      );

      final CameraInitializedEvent event = await initiliazed;

      _previewSize = Size(
        event.previewWidth,
        event.previewHeight,
      );

      if (mounted) {
        var name = camera.name.split(" ");
        setState(() {
          _initialised = true;
          _cameraId = cameraId;
          _cameraIndex = cameraIndex;
          _cameraInfo = "Capturing Camera: ${name[0]} ${name[1]}";
        });
      }
    } on CameraException catch (e) {
      try {
        /// in case the streams are running
        /// i.e. the cameraId was successfully set and the error occurred later
        if (cameraId >= 0) {
          await CameraPlatform.instance.dispose(cameraId);
        }
      } on CameraException catch (e) {
        debugPrint("Failed to dispose camera: ${e.code}: ${e.description}");
      }

      /// Reset State
      if (mounted) {
        setState(() {
          _initialised = false;
          _cameraId = -1;
          _cameraIndex = 0;
          _previewSize = null;
          _recording = false;
          _recordingTimed = false;
          _cameraInfo =
              "Failed to initliase camera: ${e.code}: ${e.description}";
        });
      }
    }
  }

  /// Disposes the current camera view
  Future<void> _disposeCurrentCamera() async {
    if (_cameraId >= 0 && _initialised) {
      try {
        await CameraPlatform.instance.dispose(_cameraId);

        if (mounted) {
          setState(() {
            _initialised = false;
            _cameraId = -1;
            _cameraIndex = 0;
            _previewSize = null;
            _recording = false;
            _recordingTimed = false;
            _cameraInfo = "Camera Disposed";
          });
        }
      } on CameraException catch (e) {
        if (mounted) {
          setState(() {
            _cameraInfo =
                "Failed to dispose camera: ${e.code}: ${e.description}";
          });
        }
      }
    }
  }

  /// Takes a photo and stores it in the Photos folder in C:/Users/OneDrive/Photos
  Future<void> _takePicture() async {
    CameraPlatform.instance.takePicture(_cameraId).then((value) async {
      var fileName = value.name;

      moveFile(File.fromUri(Uri.file(value.path)), fileName);
    });
  }

  moveFile(File sourceFile, String fileName) async {
    final patientUid = ref.watch(patientProvider).uid;
    final String filePath = "$applicationPath\\$patientUid";
    final String filePosition = "left-$fileName";
    final String finalFilePath = "$filePath\\$filePosition";

    await sourceFile.rename(finalFilePath);
  }

  /// Records a timed video and stores it in the Videos folder in C:/Users/OneDrive/Videos
  Future<void> _recordTimed(int seconds) async {
    if (_initialised && _cameraId >= 0 && !_recordingTimed) {
      CameraPlatform.instance
          .onVideoRecordedEvent(_cameraId)
          .first
          .then((event) async {
        final String newPath = event.file.name;

        moveFile(File.fromUri(Uri.file(event.file.path)), newPath);

        if (mounted) {
          setState(() {
            _recordingTimed = false;
          });
        }
      });

      await CameraPlatform.instance.startVideoRecording(
        _cameraId,
        maxVideoDuration: Duration(seconds: seconds),
      );

      if (mounted) {
        setState(() {
          _recordingTimed = true;
        });
      }
    }
  }

  /// This switches camera provided the device is connected to multiple cameras.
  Future<void> _switchCamera() async {
    if (_cameras.isNotEmpty) {
      /// select next index
      _cameraIndex = (_cameraIndex + 1) % _cameras.length;
      if (_initialised && _cameraId >= 0) {
        await _disposeCurrentCamera();
        await _fetchCameras();
        if (_cameras.isNotEmpty) {
          await _initiliaseCamera();
        } else {
          await _fetchCameras();
        }
      }
    }
  }

  /// This function handles camera error by disposing the active camera.
  /// It then fetches a new camera.
  void _onCameraError(CameraErrorEvent event) {
    if (mounted) {
      popUpInfoBar(
          context, InfoBarSeverity.error, "Ohh noo!,", event.description, 5);

      /// Dispose camera on camera error as it can't be used anymore
      _disposeCurrentCamera();
      _fetchCameras();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 23, left: 75),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: const Text("Left Ear").bold().fontSize(24),
                )),
            Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: StreamBuilder(
                      stream: recordStartTimer(!_recording),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(snapshot.data.toString()).bold();
                        } else {
                          return const Text("00:00");
                        }
                      }),
                )),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (_initialised && _cameraId > 0 && _previewSize != null)
                    Container(
                      constraints: BoxConstraints(
                          minHeight: 500,
                          maxHeight: MediaQuery.of(context).size.height - 191),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: AspectRatio(
                          aspectRatio:
                              _previewSize!.width / _previewSize!.height,
                          child:
                              CameraPlatform.instance.buildPreview(_cameraId),
                        ),
                      ),
                    ),
                  largeWidth,
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 64),
              child: Align(
                alignment: Alignment.centerRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(999)),
                      child: IconButton(
                          icon: const Icon(Ionicons.camera_outline, size: 28),
                          onPressed: _initialised ? _takePicture : null),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(999)),
                      child: IconButton(
                        icon: const Icon(Ionicons.videocam, size: 28),
                        onPressed:
                            (_initialised && !_recording && !_recordingTimed)
                                ? () => _recordTimed(15)
                                : null,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999)),
                      child: IconButton(
                          icon: const Icon(Ionicons.camera_reverse_outline,
                              size: 28),
                          onPressed: _switchCamera),
                    ),
                    Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999)),
                      child: IconButton(
                        icon: const Icon(Ionicons.checkmark_done, size: 28),
                        onPressed: () async {
                          try {
                            continueButton(context);
                          } catch (error) {
                            popUpInfoBar(context, InfoBarSeverity.warning,
                                errorLabel, noFilesFound, 5);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FilledButton(
                      onPressed: _initialised
                          ? _disposeCurrentCamera
                          : _initiliaseCamera,
                      child: Text(
                          _initialised ? "Dipose Camera" : "Create Camera")),
                )),
            Positioned(
              top: 16,
              left: 16,
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: IconButton(
                  style: ButtonStyle(iconSize: ButtonState.all(32)),
                  icon: const Icon(Ionicons.close_outline),
                  onPressed: () {
                    _disposeCurrentCamera();
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void continueButton(BuildContext context) {
    String patientUid = ref.watch(patientProvider).uid;
    final directory = Directory("$applicationPath\\$patientUid");

    if (directory.listSync().isEmpty) {
      popUpInfoBar(
          context, InfoBarSeverity.warning, errorLabel, noFilesFound, 5);
    } else {
      List<FileSystemEntity> files = directory.listSync();

      bool fileExist = false;

      for (FileSystemEntity file in files) {
        if (FileSystemEntity.isFileSync(file.path) &&
            file.path.contains('left-')) {
          fileExist = true;
          break;
        }
      }

      if (fileExist) {
        _disposeCurrentCamera();

        Navigator.push(
          context,
          FluentPageRoute(
            builder: (context) => const RightCamera(),
          ),
        );
      } else {
        popUpInfoBar(
            context, InfoBarSeverity.warning, errorLabel, noFilesFound, 5);
      }
    }
  }
}

Stream<String> recordStartTimer(bool isRecording) {
  int remainingSeconds = 15;

  if (!isRecording) {
    return const Stream.empty();
  }
  return Stream.periodic(const Duration(seconds: 15), (i) {
    remainingSeconds--;
    if (remainingSeconds < 10) {
      return "00:0$remainingSeconds";
    } else {
      return "00:$remainingSeconds";
    }
  });
}
