import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

abstract class ApplicationRepository {
  // Encryption Data Source
  String encryptData({required String data});

  String decryptData({required String data});
  
  // Remote Set Database Data Source
  Future<void> setPatientRemote({required PatientEntity patient});

  Future<void> setRemarksRemote({required RemarksEntity remarks});
  
  Future<void> setScreeningRemote({required ScreeningEntity screening});
  
  Future<void> setUserRemote({required UserEntity user});

  Future<void> uploadScreeningImage({required String id, required String path});

  Future<void> uploadUserImage({required String id, required String path});
  
  // Remote Get Database Data Source
  Future<List<AssignmentEntity>> getAssignmentRemote();

  Future<List<UserEntity>> getDoctorsRemote();

  Future<List<PatientEntity>> getPatientsRemote();

  Future<PatientEntity> getPatientRemote({required String id});

  Future<RemarksEntity> getRemarksRemote({required String id});

  Future<List<SchoolEntity>> getSchoolsRemote();

  Future<List<ScreeningEntity>> getScreeningsRemote();

  Future<ScreeningEntity> getScreeningRemote({required String id});

  Future<UserEntity> getUserDocumentRemote();

  Future<File> getScreeningImage({required String id});

  Future<File> getUserImage({required String id});

  // Local Set Database Data Source
  Future<void> setAssignmentLocal({required List<AssignmentEntity> assignments});

  Future<void> setDoctorsLocal({required List<UserEntity> doctors});

  Future<void> setPatientsLocal({required List<PatientEntity> patients});

  Future<void> setPatientLocal({required PatientEntity patient});

  Future<void> setRemarksLocal({required RemarksEntity remarks});

  Future<void> setSchoolsLocal({required List<SchoolEntity> schools});

  Future<void> setScreeningsLocal({required List<ScreeningEntity> screenings});

  Future<void> setScreeningLocal({required ScreeningEntity screening});

  Future<void> setUserLocal({required UserEntity user});

  // Local Get Database Data Source
  Future<List<AssignmentEntity>> getAssignmentLocal();

  Future<List<UserEntity>> getDoctorsLocal();

  Future<UserEntity?> getDoctorLocal({required String id});

  Future<List<PatientEntity>> getPatientsLocal();

  Future<PatientEntity?> getPatientLocal({required String id});

  Future<RemarksEntity?> getRemarksLocal({required String id});

  Future<List<SchoolEntity>> getSchoolsLocal();

  Future<List<ScreeningEntity>?> getScreeningsLocal();

  Future<ScreeningEntity?> getScreeningLocal({required String id});

  Future<UserEntity?> getUserLocal();
}
