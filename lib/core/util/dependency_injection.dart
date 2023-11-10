import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/core/util/repositories_injection.dart';
import 'package:health_worker/features/features.dart';

late final Uuid uuid;
late final Client client;
late final Realtime realtime;
late final Databases database;
late final Teams team;
late final Storage cloud;
late final Isar isar;
late final String applicationDirectory;
late final String documentDirectory;

late final AuthenticationRepository authenticationRepository;
late final EncryptionRepository encryptionRepository;
late final UseCases useCases;

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
    isar = await Isar.open(
      [
        ApplicationModelSchema,
        AssignmentModelSchema,
        DoctorModelSchema,
        PatientModelSchema,
        RemarksModelSchema,
        SchoolModelSchema,
        ScreeningModelSchema,
        UserModelSchema,
        SyncModelSchema,
      ],
      directory: applicationDirectory,
      name: "db",
    );

    // Initialize Appwrite using the appwrite function
    appwrite();

    // Initialize AuthenticationRepository using the createAuthenticationRepository function
    authenticationRepository = createAuthenticationRepository();

    // Initialize ApplicationRepository using the createApplicationRepository function
    // applicationRepository = createApplicationRepository();
    useCases = createUseCases();
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

  // Use Cases dependency injection
  UseCases createUseCases() {
    final AssignmentsRepository assignment = createAssignmentRepository();
    final DoctorsRepository doctor = createDoctorRepository();
    final PatientsRepository patient = createPatientRepository();
    final RemarksRepository remarks = createRemarksRepository();
    final SchoolsRepository school = createSchoolRepository();
    final ScreeningsRepository screening = createScreeningRepository();
    final UserRepository user = createUserRepository();

    final UseCases useCases = UseCases(
      assignmentsRepository: assignment,
      doctorsRepository: doctor,
      patientsRepository: patient,
      remarksRepository: remarks,
      schoolsRepository: school,
      screeningsRepository: screening,
      userRepository: user,
    );
    return useCases;
  }
}
