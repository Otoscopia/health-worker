import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:encrypt/encrypt.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

late final Uuid uuid;
late final Client client;
late final Realtime realtime;
late final Databases database;
late final Teams team;
late final Storage cloud;
late final AuthenticationRepository authenticationRepository;
late final ApplicationRepository applicationRepository;
late final Isar isar;
late final String applicationDirectory;
late final String documentDirectory;
late final EncryptionService encryptionService;

class DependencyInjection {
  DependencyInjection._();

  static final DependencyInjection _instance = DependencyInjection._();

  factory DependencyInjection() => _instance;

  Future<void> initialize() async {
    // Initialize Uuid
    uuid = const Uuid();

    Directory applicationSupportDirectory =
        await getApplicationSupportDirectory();
    applicationDirectory = applicationSupportDirectory.path;

    Directory applicationDocumentsDirectory =
        await getApplicationDocumentsDirectory();
    documentDirectory = applicationDocumentsDirectory.path;

    // Initialize Isar
    isar = await Isar.open([
      AssignmentModelSchema,
      DoctorModelSchema,
      PatientModelSchema,
      RemarksModelSchema,
      SchoolModelSchema,
      ScreeningModelSchema,
      UserModelSchema
    ], directory: applicationDirectory, name: "db");

    // Initialize Appwrite using the appwrite function
    appwrite();

    // Initialize AuthenticationRepository using the createAuthenticationRepository function
    authenticationRepository = createAuthenticationRepository();

    // Initialize ApplicationRepository using the createApplicationRepository function
    applicationRepository = createApplicationRepository();
  }

  // Appwrite Dependency Injection
  void appwrite() {
    // Initialize client
    client = Client();

    // Initialize client endpoint and project id
    client.setEndpoint(Env.projectEndPoint).setProject(Env.projectID);

    // Initialize realtime
    realtime = Realtime(client);

    // Initialize database
    database = Databases(client);

    // Initialize cloud
    cloud = Storage(client);

    // Initialize team
    team = Teams(client);
  }

  // Authentication Repository dependency injection
  AuthenticationRepository createAuthenticationRepository() {
    final AuthenticationDataSource dataSource = AuthenticationDataSource();
    final AuthenticationRepositoryImpl repository =
        AuthenticationRepositoryImpl(dataSource: dataSource);
    return repository;
  }

  ApplicationRepository createApplicationRepository() {
    final Key key = Key.fromBase64("+7b4f/rDQmecC/9ULyBeNwmi6Om2iirH3qLsFtxIn5U=");
    final RemoteGetDataSource remoteGet = RemoteGetDataSource();
    final RemoteSetDataSource remoteSet = RemoteSetDataSource();
    final LocalGetDatabaseUseCase localGet = LocalGetDatabaseUseCase();
    final LocalSetDatabaseUseCase localSet = LocalSetDatabaseUseCase();
    final EncryptionDataSource encryption = EncryptionDataSource(key: key);

    final ApplicationRepositoryImpl repository = ApplicationRepositoryImpl(
      remoteGet: remoteGet,
      remoteSet: remoteSet,
      localGet: localGet,
      localSet: localSet,
      encryption: encryption,
    );

    return repository;
  }
}
