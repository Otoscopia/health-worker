import 'package:appwrite/models.dart';
import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

class ApplicationRepositoryImpl implements ApplicationRepository {
  final RemoteGetDataSource remoteGet;
  final RemoteSetDataSource remoteSet;
  final LocalGetDatabaseUseCase localGet;
  final LocalSetDatabaseUseCase localSet;
  final EncryptionDataSource encryption;

  ApplicationRepositoryImpl({
    required this.remoteGet,
    required this.remoteSet,
    required this.localGet,
    required this.localSet,
    required this.encryption,
  });

  @override
  String decryptData({required String data}) {
    final String decryptedData = encryption.decryptData(data: data);

    return decryptedData;
  }

  @override
  String encryptData({required String data}) {
    final String encryptData = encryption.encryptData(data: data);

    return encryptData;
  }

  @override
  Future<List<AssignmentEntity>> getAssignmentLocal() async {
    final List<AssignmentEntity> assignments = await localGet.getAssignment();

    return assignments;
  }

  @override
  Future<List<AssignmentEntity>> getAssignmentRemote() async {
    final DocumentList assignments = await remoteGet.getAssignment();

    final List<AssignmentEntity> assignmentList = assignments.documents
        .map((Document document) => AssignmentEntity(
            id: document.$id,
            nurse: document.data['nurse'],
            school: document.data['school'],
            startDate: document.data['startDate'],
            endDate: document.data['endDate']))
        .toList();

    return assignmentList;
  }

  @override
  Future<UserEntity?> getDoctorLocal({required String id}) async {
    final UserEntity? doctor = await localGet.getDoctor(id: id);

    return doctor;
  }

  @override
  Future<List<UserEntity>> getDoctorsLocal() async {
    final List<UserEntity> doctors = await localGet.getDoctors();

    return doctors;
  }

  @override
  Future<List<UserEntity>> getDoctorsRemote() async {
    final DocumentList doctors = await remoteGet.getDoctors();

    final List<UserEntity> doctorList = doctors.documents
        .map((Document document) => UserEntity(
              id: document.$id,
              name: document.data['name'],
              email: document.data['email'],
              role: document.data['role'],
              phone: document.data['phone'],
              workAddress: document.data['workAddress'],
            ))
        .toList();

    return doctorList;
  }

  @override
  Future<PatientEntity?> getPatientLocal({required String id}) async {
    final PatientEntity? patient = await localGet.getPatient(id: id);

    return patient;
  }

  @override
  Future<PatientEntity> getPatientRemote({required String id}) async {
    final Document patient = await remoteGet.getPatient(id: id);

    final PatientEntity entity = PatientEntity(
        id: patient.$id,
        name: patient.data['name'],
        gender: patient.data['gender'],
        birthdate: patient.data['birthdate'],
        school: patient.data['school'],
        schoolID: patient.data['schoolID'],
        guardiansName: patient.data['guardiansName'],
        guardiansPhone: patient.data['guardiansPhone'],
        creator: patient.data['creator'],
        doctor: patient.data['doctor']);

    return entity;
  }

  @override
  Future<List<PatientEntity>> getPatientsLocal() async {
    final List<PatientEntity> patients = await localGet.getPatients();

    return patients;
  }

  @override
  Future<List<PatientEntity>> getPatientsRemote() async {
    final DocumentList patients = await remoteGet.getPatients();

    final List<PatientEntity> entities = patients.documents
        .map((patient) => PatientEntity(
            id: patient.$id,
            name: patient.data['name'],
            gender: patient.data['gender'],
            birthdate: patient.data['birthdate'],
            school: patient.data['school']["\$id"],
            schoolID: patient.data['schoolID'],
            guardiansName: patient.data['guardiansName'],
            guardiansPhone: patient.data['guardiansPhone'],
            creator: patient.data['creator']["\$id"],
            doctor: patient.data['doctor']['\$id']))
        .toList();

    return entities;
  }

  @override
  Future<RemarksEntity?> getRemarksLocal({required String id}) async {
    final RemarksEntity? remarks = await localGet.getRemarks(id: id);

    return remarks;
  }

  @override
  Future<RemarksEntity> getRemarksRemote({required String id}) async {
    final Document remarks = await remoteGet.getRemarks(id: id);

    final RemarksEntity entity = RemarksEntity(
        id: remarks.$id,
        screening: remarks.data['screening'],
        followUpDate: remarks.data['followUpDate'],
        remarks: remarks.data['remarks']);

    return entity;
  }

  @override
  Future<List<SchoolEntity>> getSchoolsLocal() async {
    List<SchoolEntity> schools = await localGet.getSchools();

    return schools;
  }

  @override
  Future<List<SchoolEntity>> getSchoolsRemote() async {
    final DocumentList schools = await remoteGet.getSchools();

    final List<SchoolEntity> entities = schools.documents
        .map((school) => SchoolEntity(
              id: school.$id,
              name: school.data['name'],
              address: school.data['address'],
              code: school.data['code'],
            ))
        .toList();

    return entities;
  }

  @override
  Future<File> getScreeningImage({required String id}) async {
    final File image = await remoteGet.getScreeningImage(id: id);

    return image;
  }

  @override
  Future<ScreeningEntity?> getScreeningLocal({required String id}) async {
    final ScreeningEntity? screening = await localGet.getScreening(id: id);

    return screening;
  }

  @override
  Future<ScreeningEntity> getScreeningRemote({required String id}) async {
    final Document screening = await remoteGet.getScreening(id: id);

    final ScreeningEntity entity = ScreeningEntity(
        id: screening.$id,
        patient: screening.data['patient'],
        assignment: screening.data['assignment'],
        historyOfIllness: screening.data['historyOfIllness'],
        healthWorkerRemarks: screening.data['healthWorkerRemarks'],
        temperature: screening.data['temperature'],
        height: screening.data['height'],
        weight: screening.data['weight'],
        hasSimilarCondition: screening.data['hasSimilarCondition'],
        chiefComplaint: screening.data['chiefComplaint'],
        chiefComplaintMessage: screening.data['chiefComplaintMessage'],
        hasAllergies: screening.data['hasAllergies'],
        typeOfAllergies: screening.data['typeOfAllergies'],
        undergoSurgery: screening.data['undergoSurgery'],
        takingMedication: screening.data['takingMedication'],
        takingMedicationMessage: screening.data['takingMedicationMessage'],
        status: screening.data['status']);

    return entity;
  }

  @override
  Future<List<ScreeningEntity>> getScreeningsLocal() async {
    final List<ScreeningEntity> screenings = await localGet.getScreenings();

    return screenings;
  }

  @override
  Future<List<ScreeningEntity>> getScreeningsRemote() async {
    final DocumentList screenings = await remoteGet.getScreenings();

    final List<ScreeningEntity> entities = screenings.documents
        .map((screening) => ScreeningEntity(
            id: screening.$id,
            patient: screening.data['patient'],
            assignment: screening.data['assignment'],
            historyOfIllness: screening.data['historyOfIllness'],
            healthWorkerRemarks: screening.data['healthWorkerRemarks'],
            temperature: screening.data['temperature'],
            height: screening.data['height'],
            weight: screening.data['weight'],
            hasSimilarCondition: screening.data['hasSimilarCondition'],
            chiefComplaint: screening.data['chiefComplaint'],
            chiefComplaintMessage: screening.data['chiefComplaintMessage'],
            hasAllergies: screening.data['hasAllergies'],
            typeOfAllergies: screening.data['typeOfAllergies'],
            undergoSurgery: screening.data['undergoSurgery'],
            takingMedication: screening.data['takingMedication'],
            takingMedicationMessage: screening.data['takingMedicationMessage'],
            status: screening.data['status']))
        .toList();

    return entities;
  }

  @override
  Future<UserEntity> getUserDocumentRemote() async {
    final Document user = await remoteGet.getUserDocument();

    final UserEntity entity = UserEntity(
        id: user.$id,
        name: user.data['name'],
        email: user.data['email'],
        role: user.data['role'],
        phone: user.data['phone'],
        workAddress: user.data['workAddress']);

    return entity;
  }

  @override
  Future<File> getUserImage({required String id}) async {
    final File image = await remoteGet.getUserImage(id: id);

    return image;
  }

  @override
  Future<UserEntity> getUserLocal() async {
    final UserEntity user = await localGet.getUser();

    return user;
  }

  @override
  Future<void> setAssignmentLocal(
      {required List<AssignmentEntity> assignments}) async {
    final List<AssignmentModel> models = assignments
        .map((assignment) => AssignmentModel(
            id: assignment.id,
            nurse: assignment.nurse,
            school: assignment.school,
            startDate: assignment.startDate,
            endDate: assignment.endDate))
        .toList();

    await localSet.setAssignment(models);
  }

  @override
  Future<void> setDoctorsLocal({required List<UserEntity> doctors}) async {
    final List<DoctorModel> models = doctors
        .map((doctor) => DoctorModel(
              Isar.autoIncrement,
              id: doctor.id,
              name: doctor.name,
              email: doctor.email,
              role: doctor.role,
              phone: doctor.phone,
              workAddress: doctor.workAddress,
            ))
        .toList();

    await localSet.setDoctors(models);
  }

  @override
  Future<void> setPatientLocal({required PatientEntity patient}) async {
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
    );

    await localSet.setPatient(patientModel: model);
  }

  @override
  Future<void> setPatientRemote({required PatientEntity patient}) async {
    await remoteSet.setPatient(patient: patient);
  }

  @override
  Future<void> setPatientsLocal({required List<PatientEntity> patients}) async {
    final List<PatientModel> entities = patients
        .map((patient) => PatientModel(
            id: patient.id,
            name: patient.name,
            gender: patient.gender,
            birthdate: patient.birthdate,
            school: patient.school,
            schoolID: patient.schoolID,
            guardiansName: patient.guardiansName,
            guardiansPhone: patient.guardiansPhone,
            creator: patient.creator,
            doctor: patient.doctor))
        .toList();

    await localSet.setPatients(patients: entities);
  }

  @override
  Future<void> setRemarksLocal({required RemarksEntity remarks}) async {
    final RemarksModel models = RemarksModel(
      id: remarks.id,
      screening: remarks.screening,
      followUpDate: remarks.followUpDate,
      remarks: remarks.remarks,
    );

    await localSet.setRemarks(remarksModel: models);
  }

  @override
  Future<void> setRemarksRemote({required RemarksEntity remarks}) async {
    await remoteSet.setRemarks(remarks: remarks);
  }

  @override
  Future<void> setSchoolsLocal({required List<SchoolEntity> schools}) async {
    final List<SchoolModel> models = schools
        .map((school) => SchoolModel(
              id: school.id,
              name: school.name,
              address: school.address,
              code: school.code,
            ))
        .toList();

    await localSet.setSchools(models);
  }

  @override
  Future<void> setScreeningLocal({required ScreeningEntity screening}) async {
    final ScreeningModel model = ScreeningModel(
      id: screening.id,
      patient: screening.patient,
      assignment: screening.assignment,
      historyOfIllness: screening.historyOfIllness,
      healthWorkerRemarks: screening.healthWorkerRemarks,
      temperature: screening.temperature,
      height: screening.height,
      weight: screening.weight,
      hasSimilarCondition: screening.hasSimilarCondition,
      chiefComplaint: screening.chiefComplaint,
      chiefComplaintMessage: screening.chiefComplaintMessage,
      hasAllergies: screening.hasAllergies,
      typeOfAllergies: screening.typeOfAllergies,
      undergoSurgery: screening.undergoSurgery,
      takingMedication: screening.takingMedication,
      takingMedicationMessage: screening.takingMedicationMessage,
      status: screening.status,
    );

    await localSet.setScreening(screenings: model);
  }

  @override
  Future<void> setScreeningRemote({required ScreeningEntity screening}) async {
    await remoteSet.setScreening(screening: screening);
  }

  @override
  Future<void> setScreeningsLocal(
      {required List<ScreeningEntity> screenings}) async {
    final List<ScreeningModel> models = screenings
        .map((screening) => ScreeningModel(
            id: screening.id,
            patient: screening.patient,
            assignment: screening.assignment,
            historyOfIllness: screening.historyOfIllness,
            healthWorkerRemarks: screening.healthWorkerRemarks,
            temperature: screening.temperature,
            height: screening.height,
            weight: screening.weight,
            hasSimilarCondition: screening.hasSimilarCondition,
            chiefComplaint: screening.chiefComplaint,
            chiefComplaintMessage: screening.chiefComplaintMessage,
            hasAllergies: screening.hasAllergies,
            typeOfAllergies: screening.typeOfAllergies,
            undergoSurgery: screening.undergoSurgery,
            takingMedication: screening.takingMedication,
            takingMedicationMessage: screening.takingMedicationMessage,
            status: screening.status))
        .toList();

    await localSet.setScreenings(screenings: models);
  }

  @override
  Future<void> setUserLocal({required UserEntity user}) {
    final UserModel model = UserModel(
      Isar.autoIncrement,
      id: user.id,
      name: user.name,
      email: user.email,
      role: user.role,
      phone: user.phone,
      workAddress: user.workAddress,
    );

    return localSet.setUser(userModel: model);
  }

  @override
  Future<void> setUserRemote({required UserEntity user}) async {
    await remoteSet.setUserData(user: user);
  }

  @override
  Future<void> uploadScreeningImage(
      {required String id, required String path}) async {
    await remoteSet.uploadScreeningImage(id: id, path: path);
  }

  @override
  Future<void> uploadUserImage(
      {required String id, required String path}) async {
    await remoteSet.uploadUserImage(id: id, path: path);
  }
}
