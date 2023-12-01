import 'dart:io';

import 'package:appwrite/appwrite.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

/// The universally unique identifier generator.
late final Uuid uuid;

/// Appwrite API client for various services.
late final Client client;

/// Appwrite Realtime client for real-time updates.
late final Realtime realtime;

/// Appwrite Database client for database-related operations.
late final Databases database;

/// Appwrite Teams client for team-related operations.
late final Teams team;

/// Appwrite Storage client for cloud storage operations.
late final Storage cloud;

/// Isar database for local data storage and retrieval.
late final Isar isar;

/// The path to the application directory.
late final String applicationDirectory;

/// The path to the document directory.
late final String documentDirectory;

/// Repository for authentication-related operations.
late final AuthenticationRepository authenticationRepository;

/// Repository for encryption-related operations.
late final EncryptionRepository encryptionRepository;

/// Repository for various repositories.
late final Repositories repositories;

/// Container for various use cases utilizing repositories.
late final UseCases useCases;

/// Handles the dependency injection setup for the application.
///
/// The [DependencyInjection] class is responsible for initializing various
/// dependencies used throughout the application, such as UUID generation,
/// Appwrite API clients, database configurations (Isar), and repositories.
/// It also provides a method to create instances of use cases that utilize
/// these repositories.
///
/// Example usage:
/// ```dart
/// import 'dependency_injection.dart';
///
/// //* Initialize the dependencies.
/// await DependencyInjection().initialize();
///
/// //* Access various dependencies.
/// final uuid = DependencyInjection().uuid;
/// final client = DependencyInjection().client;
/// final isar = DependencyInjection().isar;
/// final authenticationRepository = DependencyInjection().authenticationRepository;
/// final useCases = DependencyInjection().useCases;
/// ```
class DependencyInjection {
  /// Private constructor for the DependencyInjection class.
  DependencyInjection._();

  /// Singleton instance of DependencyInjection.
  static final DependencyInjection _instance = DependencyInjection._();

  /// Factory method to access the singleton instance.
  factory DependencyInjection() => _instance;

  /// Initializes dependencies such as UUID, Isar, Appwrite, and repositories.
  Future<void> initialize() async {
    // Initialize UUID generator from Uuid package.
    uuid = const Uuid();

    // Initialize application support directory using the path_provider package.
    Directory applicationSupportDirectory =
        await getApplicationSupportDirectory();

    // Set the application directory using the application support directory.
    applicationDirectory = applicationSupportDirectory.path;

    // Initialize document directory using the path_provider package.
    Directory applicationDocumentsDirectory =
        await getApplicationDocumentsDirectory();

    // Set the document directory using the application documents directory.
    documentDirectory = applicationDocumentsDirectory.path;

    // Initialize Isar database.
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

    // Initialize Appwrite services.
    appwrite();

    // Initialize repositories.
    repositories = Repositories();

    // Initialize authentication repository.
    authenticationRepository = repositories.createAuthenticationRepository();

    // Initialize use cases repository.
    useCases = createUseCases();
  }

  /// Configures Appwrite services such as Client, Realtime, Database, Storage, and Teams.
  void appwrite() {
    // Initialize Appwrite client.
    client = Client();

    // Set the Appwrite endpoint and project ID.
    client.setEndpoint(Env.projectEndPoint).setProject(Env.projectID);

    // Initialize Appwrite realtime client.
    realtime = Realtime(client);

    // Initialize Appwrite database client.
    database = Databases(client);

    // Initialize Appwrite cloud storage client.
    cloud = Storage(client);

    // Initialize Appwrite teams client.
    team = Teams(client);
  }

  /// Creates instances of use cases that utilize various repositories.
  UseCases createUseCases() {
    final AssignmentsRepository assignment =
        repositories.createAssignmentRepository();
    final DoctorsRepository doctor = repositories.createDoctorRepository();
    final PatientsRepository patient = repositories.createPatientRepository();
    final RemarksRepository remarks = repositories.createRemarksRepository();
    final SchoolsRepository school = repositories.createSchoolRepository();
    final ScreeningsRepository screening =
        repositories.createScreeningRepository();
    final UserRepository user = repositories.createUserRepository();
    final SyncRepository sync = repositories.createSyncRepository();

    // Initialize use cases.
    final UseCases useCases = UseCases(
      assignmentsRepository: assignment,
      doctorsRepository: doctor,
      patientsRepository: patient,
      remarksRepository: remarks,
      schoolsRepository: school,
      screeningsRepository: screening,
      userRepository: user,
      syncRepository: sync,
    );

    // Return the use cases.
    return useCases;
  }
}
