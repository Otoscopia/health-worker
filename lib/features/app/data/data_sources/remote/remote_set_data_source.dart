import 'package:appwrite/appwrite.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class RemoteSetDataSource {
  final Databases _databases;
  final Storage _storage;

  RemoteSetDataSource()
      : _databases = database,
        _storage = cloud;

  Future<void> setPatient({required PatientEntity patient}) async {
    try {
      await _databases.createDocument(
          databaseId: Env.database,
          collectionId: Env.patients,
          documentId: patient.id,
          data: {
            "name": patient.name,
            "gender": patient.gender,
            "birthdate": patient.birthdate,
            "school": patient.school,
            "schoolID": patient.schoolID,
            "guardiansName": patient.guardiansName,
            "guardiansPhone": patient.guardiansPhone,
            "creator": patient.creator,
            "doctor": patient.doctor,
          });
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setRemarks({required RemarksEntity remarks}) async {
    try {
      await _databases.createDocument(
          databaseId: Env.database,
          collectionId: Env.remarks,
          documentId: remarks.id,
          data: {
            "screening": remarks.screening,
            "followUpDate": remarks.followUpDate,
            "remarks": remarks.remarks,
          });
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setScreening({required ScreeningEntity screening}) async {
    try {
      await _databases.createDocument(
          databaseId: Env.database,
          collectionId: Env.screening,
          documentId: screening.id,
          data: {
            "patient": screening.patient,
            "assignment": screening.assignment,
            "historyOfIllness": screening.historyOfIllness,
            "healthWorkerRemarks": screening.healthWorkerRemarks,
            "temperature": screening.temperature,
            "height": screening.height,
            "weight": screening.weight,
            "hasSimilarCondition": screening.hasSimilarCondition,
            "chiefComplaint": screening.chiefComplaint,
            "chiefComplaintMessage": screening.chiefComplaintMessage,
            "hasAllergies": screening.hasAllergies,
            "typeOfAllergies": screening.typeOfAllergies,
            "undergoSurgery": screening.undergoSurgery,
            "takingMedication": screening.takingMedication,
            "takingMedicationMessage": screening.takingMedicationMessage,
            "status": screening.status,
          });
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setUserData({required UserEntity user}) async {
    try {
      await _databases.updateDocument(
          databaseId: Env.database,
          collectionId: Env.users,
          documentId: user.id,
          data: {
            "name": user.name,
            "email": user.email,
            "phone": user.phone,
            "role": user.role,
            "workAddress": user.workAddress,
          });
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> uploadScreeningImage(
      {required String id, required String path}) async {
    try {
      await _storage.createFile(
          bucketId: Env.screeningBucket,
          fileId: id,
          file: InputFile.fromPath(path: path));
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> uploadUserImage(
      {required String id, required String path}) async {
    try {
      await _storage.createFile(
          bucketId: Env.avatarBucket,
          fileId: id,
          file: InputFile.fromPath(path: path));
    } on AppwriteException catch (error) {
      throw Exception(error.message);
    }
  }
}
