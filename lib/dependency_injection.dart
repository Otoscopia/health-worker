import 'package:appwrite/appwrite.dart';

import 'config/models/env_model.dart';

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
  }
}
