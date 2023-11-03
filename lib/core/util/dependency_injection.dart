import 'package:appwrite/appwrite.dart';

import 'package:health_worker/core/models/env_model.dart';

late final Client client;
late final Account account;
late final Realtime realtime;
late final Databases databases;

class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection _instance = DependencyInjection._();

  factory DependencyInjection() => _instance;

  Future<void> initialize() async {
    appwrite();
  }

  void appwrite() {
    // initialize client
    client = Client();

    // set client endpoint and project id
    client.setEndpoint(Env.projectEndPoint).setProject(Env.projectID);

    // initialize account
    account = Account(client);

    // initialize realtime
    realtime = Realtime(client);

    // initialize database
    databases = Databases(client);
  }
}