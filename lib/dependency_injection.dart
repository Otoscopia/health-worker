import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:window_manager/window_manager.dart';

import 'core/models/application_database.dart';

import 'core/constants/constants.dart';
import 'core/models/env_model.dart';

late Client client;
late Account account;
late Teams team;
late TeamList teamList;
late ApplicationDatabase database;
late FlutterSecureStorage storage;

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

    doWhenWindowReady(() {
      final window = appWindow;
      const initialWindowSize = applicationMinimumSize;
      window.minSize = initialWindowSize;
      window.size = initialWindowSize;
      window.alignment = center;
      window.title = applicationTitle;
      window.show();
    });

    WindowOptions windowOptions = const WindowOptions(titleBarStyle: TitleBarStyle.hidden);

    windowManager.waitUntilReadyToShow(windowOptions);

    database = await $FloorApplicationDatabase.databaseBuilder('otoscopia.db').build();

    await windowManager.ensureInitialized();
  }
}
