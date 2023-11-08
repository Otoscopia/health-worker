import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class ScreeningsRepositoryImpl implements ScreeningsRepository {
  final LocalScreeningsDataSource _local;
  final RemoteScreeningsDataSource _remote;

  ScreeningsRepositoryImpl({
    required LocalScreeningsDataSource local,
    required RemoteScreeningsDataSource remote,
  })  : _local = local,
        _remote = remote;

  // Get screenings from local screenings data source
  @override
  Future<List<ScreeningEntity>> getLocalScreenings() async {
    final List<ScreeningModel> response = await _local.getScreenings();

    final List<ScreeningEntity> screenings = response.map(
      (screening) {
        return ScreeningEntity(
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
            images: screening.images,
            createdAt: screening.createdAt);
      },
    ).toList();

    return screenings;
  }

  // Get screenings from remote screenings data source
  @override
  Future<List<ScreeningEntity>> getRemoteScreenings() async {
    final DocumentList response = await _remote.getScreenings();

    final List<ScreeningEntity> screenings =
        response.documents.map((screening) {
      return ScreeningEntity(
        id: screening.$id,
        patient: screening.data["patient"]["\$id"],
        assignment: screening.data["assignment"]["\$id"],
        historyOfIllness: screening.data["historyOfIllness"],
        healthWorkerRemarks: screening.data["healthWorkerRemarks"],
        temperature: screening.data["temperature"],
        height: screening.data["height"],
        weight: screening.data["weight"],
        hasSimilarCondition: screening.data["hasSimilarCondition"],
        chiefComplaint: screening.data["chiefComplaint"],
        chiefComplaintMessage: screening.data["chiefComplaintMessage"],
        hasAllergies: screening.data["hasAllergies"],
        typeOfAllergies: screening.data["typeOfAllergies"],
        undergoSurgery: screening.data["undergoSurgery"],
        takingMedication: screening.data["takingMedication"],
        takingMedicationMessage: screening.data["takingMedicationMessage"],
        status: screening.data["status"],
        images: screening.data["images"],
        createdAt: screening.$createdAt,
      );
    }).toList();

    return screenings;
  }

  // Get screening from remote screenings data source
  @override
  Future<List<File>> getScreeningImages(
      {required List<String> ids, required List<String> paths}) {
    // TODO: [OT-38] implement getScreeningImages
    throw UnimplementedError();
  }

  // Set screenings from local screenings data source
  @override
  Future<void> setLocalScreening({required ScreeningEntity screening}) async {
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
        images: screening.images,
        createdAt: screening.createdAt,
      );
    
    await _local.setScreening(screenings: model);
  }

  // Set screenings from remote screenings data source
  @override
  Future<void> setRemoteScreening({required ScreeningEntity screening}) async {
    await _remote.setScreening(screening: screening);
  }

  // Set screenings from local screenings data source
  @override
  Future<void> setScreenings({required List<ScreeningEntity> screenings}) async {
    final List<ScreeningModel> models = screenings.map((screening) {
      return ScreeningModel(
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
        images: screening.images,
        createdAt: screening.createdAt,
      );
    }).toList();

    await _local.setScreenings(screenings: models);
  }

  // Find screening from local screenings data source
  @override
  Future<ScreeningEntity?> findScreening({required String id}) async {
    final ScreeningModel? response = await _local.findScreening(id: id);

    if (response == null) {
      return null;
    } else {
      return ScreeningEntity(
        id: response.id,
        patient: response.patient,
        assignment: response.assignment,
        historyOfIllness: response.historyOfIllness,
        healthWorkerRemarks: response.healthWorkerRemarks,
        temperature: response.temperature,
        height: response.height,
        weight: response.weight,
        hasSimilarCondition: response.hasSimilarCondition,
        chiefComplaint: response.chiefComplaint,
        chiefComplaintMessage: response.chiefComplaintMessage,
        hasAllergies: response.hasAllergies,
        typeOfAllergies: response.typeOfAllergies,
        undergoSurgery: response.undergoSurgery,
        takingMedication: response.takingMedication,
        takingMedicationMessage: response.takingMedicationMessage,
        status: response.status,
        images: response.images,
        createdAt: response.createdAt,
      );
    }
  }

  // Set screening images from remote screenings data source
  @override
  Future<void> uploadScreeningImages({required List<String> ids, required List<String> path}) async {
    await _remote.uploadScreeningImages(ids: ids, paths: path);
  }
}
