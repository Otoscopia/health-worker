import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class PatientsRepositoryImpl extends PatientsRepository {
  final RemotePatientsDataSource _remote;
  final LocalPatientsDataSource _local;

  PatientsRepositoryImpl({
    required RemotePatientsDataSource remote,
    required LocalPatientsDataSource local,
  })  : _remote = remote,
        _local = local;

  // Get patients from remote patients data source
  @override
  Future<List<PatientEntity>> getRemotePatients() async {
    final DocumentList response = await _remote.getPatients();

    final List<PatientEntity> patients = response.documents.map(
      (patient) {
        return PatientEntity(
            id: patient.$id,
            name: patient.data["name"],
            gender: patient.data["gender"],
            birthdate: patient.data["birthdate"],
            school: patient.data["school"]["\$id"],
            schoolID: patient.data["schoolID"],
            guardiansName: patient.data["guardiansName"],
            guardiansPhone: patient.data["guardiansPhone"],
            creator: patient.data["creator"]["\$id"],
            doctor: patient.data["doctor"]["\$id"],
            createdAt: patient.$createdAt);
      },
    ).toList();

    return patients;
  }

  // Get patients from local patients data source
  @override
  Future<List<PatientEntity>> getLocalPatients() async {
    final List<PatientModel> response = await _local.getPatients();

    final List<PatientEntity> patients = response.map(
      (patient) {
        return PatientEntity(
            id: patient.id,
            name: patient.name,
            gender: patient.gender,
            birthdate: patient.birthdate,
            school: patient.school,
            schoolID: patient.schoolID,
            guardiansName: patient.guardiansName,
            guardiansPhone: patient.guardiansPhone,
            creator: patient.creator,
            doctor: patient.doctor,
            createdAt: patient.createdAt);
      },
    ).toList();

    return patients;
  }

  // Set patients to local patients data source
  @override
  Future<void> setPatients({required List<PatientEntity> patients}) async {
    final List<PatientModel> models = patients.map(
      (patient) {
        return PatientModel(
            id: patient.id,
            name: patient.name,
            gender: patient.gender,
            birthdate: patient.birthdate,
            school: patient.school,
            schoolID: patient.schoolID,
            guardiansName: patient.guardiansName,
            guardiansPhone: patient.guardiansPhone,
            creator: patient.creator,
            doctor: patient.doctor,
            createdAt: patient.createdAt);
      },
    ).toList();

    await _local.setPatients(patients: models);
  }

  // Set patient to local patients data source
  @override
  Future<void> setLocalPatient({required PatientEntity patient}) async {
    final PatientModel model = PatientModel(
      id: patient.id,
      name: patient.name,
      gender: patient.gender,
      birthdate: patient.birthdate,
      school: patient.school,
      schoolID: patient.schoolID,
      guardiansName: patient.guardiansName,
      guardiansPhone: patient.guardiansPhone,
      creator: patient.creator,
      doctor: patient.doctor,
      createdAt: patient.createdAt,
    );

    await _local.setPatient(patient: model);
  }

  // Set patient to remote patients data source
  @override
  Future<void> setRemotePatient({required PatientEntity patient}) async {
    await _remote.setPatient(patient: patient);
  }

  // Find patient from local patients data source
  @override
  Future<PatientEntity?> findPatient({required String id}) async {
    final PatientModel? response = await _local.findPatient(id: id);

    if (response == null) {
      return null;
    } else {
      PatientEntity patient = PatientEntity(
        id: id,
        name: response.name,
        gender: response.gender,
        birthdate: response.birthdate,
        school: response.school,
        schoolID: response.schoolID,
        guardiansName: response.guardiansName,
        guardiansPhone: response.guardiansPhone,
        creator: response.creator,
        doctor: response.doctor,
        createdAt: response.createdAt,
      );

      return patient;
    }
  }

  // Remove patients from local patients data source
  @override
  Future<void> removePatients() async {
    await _local.removePatients();
  }
}
