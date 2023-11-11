import 'package:encrypt/encrypt.dart';

import 'package:health_worker/features/features.dart';

// Authentication Repository dependency injection
AuthenticationRepository createAuthenticationRepository() {
  final AuthenticationDataSource dataSource = AuthenticationDataSource();
  final AuthenticationRepositoryImpl repository =
      AuthenticationRepositoryImpl(dataSource: dataSource);
  return repository;
}

// Encryption Repository dependency injection
EncryptionRepository createEncryptionRepository(String globalKey) {
  final Key global = Key.fromBase64(globalKey);
  final EncryptionDataSource encryption = EncryptionDataSource(key: global);

  final EncryptionRepositoryImpl repository =
      EncryptionRepositoryImpl(encryption: encryption);
  return repository;
}

// Assignment Repository dependency injection
AssignmentsRepository createAssignmentRepository() {
  final LocalAssignmentsDataSource local = LocalAssignmentsDataSource();
  final RemoteAssignmentsDataSource remote = RemoteAssignmentsDataSource();

  final AssignmentsRepositoryImpl repository =
      AssignmentsRepositoryImpl(local: local, remote: remote);
  return repository;
}

// Doctor Repository dependency injection
DoctorsRepository createDoctorRepository() {
  final LocalDoctorsDataSource local = LocalDoctorsDataSource();
  final RemoteDoctorsDataSource remote = RemoteDoctorsDataSource();

  final DoctorsRepositoryImpl repository =
      DoctorsRepositoryImpl(local: local, remote: remote);
  return repository;
}

// Patient Repository dependency injection
PatientsRepository createPatientRepository() {
  final LocalPatientsDataSource local = LocalPatientsDataSource();
  final RemotePatientsDataSource remote = RemotePatientsDataSource();

  final PatientsRepositoryImpl repository =
      PatientsRepositoryImpl(local: local, remote: remote);
  return repository;
}

// Remarks Repository dependency injection
RemarksRepository createRemarksRepository() {
  final LocalRemarksDataSource local = LocalRemarksDataSource();
  final RemoteRemarksDataSource remote = RemoteRemarksDataSource();

  final RemarksRepositoryImpl repository =
      RemarksRepositoryImpl(local: local, remote: remote);
  return repository;
}

// School Repository dependency injection
SchoolsRepository createSchoolRepository() {
  final LocalSchoolsDataSource local = LocalSchoolsDataSource();
  final RemoteSchoolsDataSource remote = RemoteSchoolsDataSource();

  final SchoolsRepositoryImpl repository =
      SchoolsRepositoryImpl(local: local, remote: remote);
  return repository;
}

// Screening Repository dependency injection
ScreeningsRepository createScreeningRepository() {
  final LocalScreeningsDataSource local = LocalScreeningsDataSource();
  final RemoteScreeningsDataSource remote = RemoteScreeningsDataSource();

  final ScreeningsRepositoryImpl repository =
      ScreeningsRepositoryImpl(local: local, remote: remote);
  return repository;
}

// User Repository dependency injection
UserRepository createUserRepository() {
  final LocalUserDataSource local = LocalUserDataSource();
  final RemoteUserDataSource remote = RemoteUserDataSource();

  final UserRepositoryImpl repository =
      UserRepositoryImpl(local: local, remote: remote);
  return repository;
}

// Application Repository dependency injection
ApplicationRepository createApplicationRepository() {
  final ApplicationDataSource application = ApplicationDataSource();

  final ApplicationRepositoryImpl repository =
      ApplicationRepositoryImpl(application: application);
  return repository;
}

SyncRepository createSyncRepository() {
  final SyncDataSource sync = SyncDataSource();

  final SyncRepositoryImpl repository = SyncRepositoryImpl(sync: sync);
  return repository;
}
