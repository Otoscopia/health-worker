import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

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
      UserEntity doctor = UserEntity(
        id: id,
        name: response.name,
        email: response.email,
        phone: response.phone,
        role: response.role,
        workAddress: response.workAddress,
      );

      return doctor;
    } else {
      return null;
    }
  }

  @override
  Future<List<UserEntity>> getLocalDoctors() async {
    final List<DoctorModel> response = await _local.getDoctors();

    List<UserEntity> doctors = response.map((doctor) {
      return UserEntity(
        id: doctor.id,
        name: doctor.name,
        email: doctor.email,
        phone: doctor.phone,
        role: doctor.role,
        workAddress: doctor.workAddress,
      );
    }).toList();

    return doctors;
  }

  @override
  Future<List<UserEntity>> getRemoteDoctors() async {
    final DocumentList response = await _remote.getDoctors();

    List<UserEntity> doctors = response.documents.map((doctor) {
      return UserEntity(
        id: doctor.$id,
        name: doctor.data["name"],
        email: doctor.data["email"],
        phone: doctor.data["phone"],
        role: doctor.data["role"],
        workAddress: doctor.data["workAddress"],
      );
    }).toList();

    return doctors;
  }

  @override
  Future<void> setDoctors({required List<UserEntity> doctors}) async {
    List<DoctorModel> model = doctors.map((doctor) {
      return DoctorModel(
        id: doctor.id,
        name: doctor.name,
        email: doctor.email,
        phone: doctor.phone,
        role: doctor.role,
        workAddress: doctor.workAddress,
      );
    }).toList();

    await _local.setDoctors(doctors: model);
  }

  @override
  Future<void> removeDoctors() async {
    await _local.removeDoctors();
  }
}
