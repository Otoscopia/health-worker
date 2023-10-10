import 'package:appwrite/appwrite.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:window_manager/window_manager.dart';

import 'core/constants/constants.dart';
import 'core/models/env_model.dart';

late Client client;
late Account account;

class DependencyInjection {
  static final DependencyInjection _singleton = DependencyInjection._internal();

  factory DependencyInjection() {
    return _singleton;
  }

  DependencyInjection._internal();

  Future<void> initialize() async {
    client = Client();
    account = Account(client);

    client
        .setEndpoint(Env.appwriteEndPoint)
        .setProject(Env.appwriteProjectID)
        .setSelfSigned(status: true);

    doWhenWindowReady(() {
      final window = appWindow;
      const initialWindowSize = applicationMinimumSize;
      window.minSize = initialWindowSize;
      window.size = initialWindowSize;
      window.alignment = center;
      window.title = applicationTitle;
      window.show();
    });

    await windowManager.ensureInitialized();

    WindowOptions windowOptions = const WindowOptions(
      titleBarStyle: TitleBarStyle.hidden
    );

    windowManager.waitUntilReadyToShow(windowOptions);
  }
}
