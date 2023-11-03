import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

late final Client client;
late final Realtime realtime;
late final AuthenticationRepository authenticationRepository;
late final ApplicationRepository applicationRepository;
late final Isar isar;
late final String applicationDirectory;
late final String documentDirectory;

class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection _instance = DependencyInjection._();

  factory DependencyInjection() => _instance;

  Future<void> initialize() async {
    // Initialize Appwrite using the appwrite function
    appwrite();

    // Initialize AuthenticationRepository using the createAuthenticationRepository function
    authenticationRepository = createAuthenticationRepository();

    // Initialize ApplicationRepository using the createApplicationRepository function
    applicationRepository = createApplicationRepository();

    Directory applicationSupportDirectory = await getApplicationSupportDirectory();
    applicationDirectory = applicationSupportDirectory.path;

    Directory applicationDocumentsDirectory = await getApplicationDocumentsDirectory();
    documentDirectory = applicationDocumentsDirectory.path;

    // Initialize Isar
    isar = await Isar.open([
      AssignmentModelSchema,
      PatientModelSchema,
      RemarksModelSchema,
      SchoolModelSchema,
      ScreeningModelSchema,
      UserModelSchema
    ], directory: applicationDirectory, name: "db");
  }

  // Appwrite Dependency Injection
  void appwrite() {
    // Initialize client
    client = Client();

    // Initialize client endpoint and project id
    client.setEndpoint(Env.projectEndPoint).setProject(Env.projectID);


    // Initialize realtime
    realtime = Realtime(client);
  }

  // Authentication Repository dependency injection
  AuthenticationRepository createAuthenticationRepository() {
    final AuthenticationDataSource dataSource = AuthenticationDataSource();
    final AuthenticationRepositoryImpl repository = AuthenticationRepositoryImpl(dataSource: dataSource);
    return repository;
  }

  ApplicationRepository createApplicationRepository() {
    final ApplicationDataSource dataSource = ApplicationDataSource();
    final ApplicationRepositoryImpl repository = ApplicationRepositoryImpl(dataSource:  dataSource);
    return repository;
  }
}
