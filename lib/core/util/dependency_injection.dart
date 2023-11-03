import 'package:appwrite/appwrite.dart';

import 'package:health_worker/core/models/env_model.dart';
import 'package:health_worker/features/authentication/authentication.dart';

late final Client client;
late final Account account;
late final Realtime realtime;
late final Databases databases;
late final AuthenticationRepository authenticationRepository;

class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection _instance = DependencyInjection._();

  factory DependencyInjection() => _instance;

  Future<void> initialize() async {
    // Initialize Appwrite using the appwrite function
    appwrite();

    // Initialize AuthenticationRepository using the createAuthenticationRepository function
    authenticationRepository = createAuthenticationRepository();
  }

  // Appwrite Dependency Injection
  void appwrite() {
    // Initialize client
    client = Client();

    // Initialize client endpoint and project id
    client.setEndpoint(Env.projectEndPoint).setProject(Env.projectID);

    // Initialize account
    account = Account(client);

    // Initialize realtime
    realtime = Realtime(client);

    // Initialize database
    databases = Databases(client);
  }

  // Authentication Repository dependency injection
  AuthenticationRepository createAuthenticationRepository() {
    final dataSource = AuthenticationDataSource();
    final repository = AuthenticationRepositoryImpl(dataSource: dataSource);
    return repository;
  }
}