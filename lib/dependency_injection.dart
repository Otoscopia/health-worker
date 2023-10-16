import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:window_manager/window_manager.dart';

import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';

import 'core/constants/constants.dart';

late FlutterSecureStorage storage;
late Directory appDir;
late String applicationPath;
late Isar isar;

class DependencyInjection {
  static final DependencyInjection _singleton = DependencyInjection._internal();

  factory DependencyInjection() {
    return _singleton;
  }

  DependencyInjection._internal();

  Future<void> initialize() async {
    storage = const FlutterSecureStorage();

    appDir = await getApplicationSupportDirectory();

    applicationPath = appDir.parent.path;

    isar = await Isar.open([UserModelSchema, PatientModelSchema, ScreeningModelSchema], directory: appDir.parent.path);

    doWhenWindowReady(() {
      final window = appWindow;
      const initialWindowSize = applicationMinimumSize;
      window.minSize = initialWindowSize;
      window.size = initialWindowSize;
      window.alignment = center;
      window.title = applicationTitle;
      window.show();
    });

    WindowOptions windowOptions =
        const WindowOptions(titleBarStyle: TitleBarStyle.hidden);

    windowManager.waitUntilReadyToShow(windowOptions);

    await windowManager.ensureInitialized();
  }
}
