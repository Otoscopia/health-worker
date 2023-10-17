import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:window_manager/window_manager.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/authentication/exports.dart';

late Client client;
late Account account;
late Teams team;
late TeamList teamList;
late Session session;
late User examiner;
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
    client = Client();

    client
        .setEndpoint(Env.appwriteEndPoint)
        .setProject(Env.appwriteProjectID)
        .setSelfSigned(status: true);

    account = Account(client);

    team = Teams(client);
    
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
