import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

class DoctorsRepositoryImpl implements DoctorsRepository {
  final LocalDoctorsDataSource _local;
  final RemoteDoctorsDataSource _remote;

  DoctorsRepositoryImpl(
      {required LocalDoctorsDataSource local,
      required RemoteDoctorsDataSource remote})
      : _local = local,
        _remote = remote;

  @override
  Future<UserEntity?> findDoctorLocal({required String id}) async {
    final DoctorModel? response = await _local.findDoctor(id: id);

    if (response != null) {
      UserEntity doctor = UserEntity.fromDoctor(response);

      return doctor;
    } else {
      return null;
    }
  }

  @override
  Future<List<UserEntity>> getLocalDoctors() async {
    final List<DoctorModel> response = await _local.getDoctors();

    List<UserEntity> doctors =
        response.map((doctor) => UserEntity.fromDoctor(doctor)).toList();

    return doctors;
  }

  @override
  Future<List<UserEntity>> getRemoteDoctors() async {
    final DocumentList response = await _remote.getDoctors();

    List<UserEntity> doctors = response.documents
        .map((doctor) => UserEntity.fromDocument(doctor))
        .toList();

    return doctors;
  }

  @override
  Future<void> setDoctors({required List<UserEntity> doctors}) async {
    List<DoctorModel> model =
        doctors.map((doctor) => DoctorModel.toModel(doctor)).toList();

    await _local.setDoctors(doctors: model);
  }

  @override
  Future<void> removeDoctors() async {
    await _local.removeDoctors();
  }
}
