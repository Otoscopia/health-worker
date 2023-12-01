import 'package:encrypt/encrypt.dart';

import 'package:health_worker/features/features.dart';

/// Manages the creation of various repositories used in the application.
///
/// The [Repositories] class is responsible for creating instances of repositories
/// related to authentication, encryption, assignments, doctors, patients, remarks,
/// schools, screenings, user, application, and sync. Each repository is created
/// with its corresponding data source implementation.
///
/// Example usage:
/// ```dart
/// import 'repositories_injection.dart';
///
/// //* Access the Repositories singleton instance.
/// final repositories = Repositories();
///
/// //* Create an instance of the AuthenticationRepository.
/// final authRepository = repositories.createAuthenticationRepository();
///
/// //* Create an instance of the AssignmentsRepository.
/// final assignmentRepository = repositories.createAssignmentRepository();
///
/// //* ... (repeat for other repositories as needed)
/// ```
class Repositories {
  /// Private constructor for the Repositories class.
  Repositories._();
  
  /// Singleton instance of Repositories.
  static final Repositories _instance = Repositories._();

  /// Factory method to access the singleton instance.
  factory Repositories() => _instance;

  /// Creates an instance of the AuthenticationRepository.
  AuthenticationRepository createAuthenticationRepository() {
    final AuthenticationDataSource dataSource = AuthenticationDataSource();

    final AuthenticationRepositoryImpl repository =
        AuthenticationRepositoryImpl(dataSource: dataSource);

    return repository;
  }

  /// Creates an instance of the EncryptionRepository.
  EncryptionRepository createEncryptionRepository(String globalKey) {
    final Key global = Key.fromBase64(globalKey);

    final EncryptionDataSource encryption = EncryptionDataSource(key: global);

    final EncryptionRepositoryImpl repository =
        EncryptionRepositoryImpl(encryption: encryption);
    
    return repository;
  }

  /// Creates an instance of the AssignmentsRepository.
  AssignmentsRepository createAssignmentRepository() {
    final LocalAssignmentsDataSource local = LocalAssignmentsDataSource();
    final RemoteAssignmentsDataSource remote = RemoteAssignmentsDataSource();

    final AssignmentsRepositoryImpl repository =
        AssignmentsRepositoryImpl(local: local, remote: remote);
    return repository;
  }

  /// Creates an instance of the DoctorsRepository.
  DoctorsRepository createDoctorRepository() {
    final LocalDoctorsDataSource local = LocalDoctorsDataSource();
    final RemoteDoctorsDataSource remote = RemoteDoctorsDataSource();

    final DoctorsRepositoryImpl repository =
        DoctorsRepositoryImpl(local: local, remote: remote);
    return repository;
  }

  /// Creates an instance of the PatientsRepository.
  PatientsRepository createPatientRepository() {
    final LocalPatientsDataSource local = LocalPatientsDataSource();
    final RemotePatientsDataSource remote = RemotePatientsDataSource();

    final PatientsRepositoryImpl repository =
        PatientsRepositoryImpl(local: local, remote: remote);
    return repository;
  }

  /// Creates an instance of the RemarksRepository.
  RemarksRepository createRemarksRepository() {
    final LocalRemarksDataSource local = LocalRemarksDataSource();
    final RemoteRemarksDataSource remote = RemoteRemarksDataSource();

    final RemarksRepositoryImpl repository =
        RemarksRepositoryImpl(local: local, remote: remote);
    return repository;
  }

  /// Creates an instance of the SchoolsRepository.
  SchoolsRepository createSchoolRepository() {
    final LocalSchoolsDataSource local = LocalSchoolsDataSource();
    final RemoteSchoolsDataSource remote = RemoteSchoolsDataSource();

    final SchoolsRepositoryImpl repository =
        SchoolsRepositoryImpl(local: local, remote: remote);
    return repository;
  }

  /// Creates an instance of the ScreeningsRepository.
  ScreeningsRepository createScreeningRepository() {
    final LocalScreeningsDataSource local = LocalScreeningsDataSource();
    final RemoteScreeningsDataSource remote = RemoteScreeningsDataSource();

    final ScreeningsRepositoryImpl repository =
        ScreeningsRepositoryImpl(local: local, remote: remote);
    return repository;
  }

  /// Creates an instance of the UserRepository.
  UserRepository createUserRepository() {
    final LocalUserDataSource local = LocalUserDataSource();
    final RemoteUserDataSource remote = RemoteUserDataSource();

    final UserRepositoryImpl repository =
        UserRepositoryImpl(local: local, remote: remote);
    return repository;
  }

  /// Creates an instance of the ApplicationRepository.
  ApplicationRepository createApplicationRepository() {
    final ApplicationDataSource application = ApplicationDataSource();

    final ApplicationRepositoryImpl repository =
        ApplicationRepositoryImpl(application: application);
    return repository;
  }

  /// Creates an instance of the SyncRepository.
  SyncRepository createSyncRepository() {
    final SyncDataSource sync = SyncDataSource();

    final SyncRepositoryImpl repository = SyncRepositoryImpl(sync: sync);
    return repository;
  }
}
