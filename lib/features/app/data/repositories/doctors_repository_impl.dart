import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

/// Implementation of the [DoctorsRepository] interface that combines both
/// remote and local data sources for managing doctor-related operations.
///
/// The [DoctorsRepositoryImpl] class integrates a [RemoteDoctorsDataSource]
/// for handling doctors from a remote Appwrite database and a
/// [LocalDoctorsDataSource] for handling doctors stored locally using Isar.
/// This class includes methods to fetch doctors from both sources, set (save)
/// doctors locally, find doctors by ID, and remove all doctors.
///
/// Example usage:
/// ```dart
/// import 'doctors_repository.dart';
/// import 'doctors_repository_impl.dart';
/// import 'remote_doctors_data_source.dart';
/// import 'local_doctors_data_source.dart';
///
/// //* Create instances of RemoteDoctorsDataSource and LocalDoctorsDataSource.
/// final remoteDataSource = RemoteDoctorsDataSource();
/// final localDataSource = LocalDoctorsDataSource();
///
/// //* Create an instance of DoctorsRepositoryImpl.
/// final doctorsRepository = DoctorsRepositoryImpl(
///   local: localDataSource,
///   remote: remoteDataSource,
/// );
///
/// //* Fetch remote doctors.
/// final remoteDoctors = await doctorsRepository.getRemoteDoctors();
///
/// //* Fetch local doctors.
/// final localDoctors = await doctorsRepository.getLocalDoctors();
///
/// //* Set (save) a list of doctors.
/// await doctorsRepository.setDoctors(doctors: listOfDoctors);
///
/// //* Find a specific doctor by ID locally.
/// final doctor = await doctorsRepository.findDoctorLocal(id: 'doctor_id');
///
/// //* Remove all doctors.
/// await doctorsRepository.removeDoctors();
/// ```
class DoctorsRepositoryImpl implements DoctorsRepository {
  /// Local data source for handling doctor entities.
  final LocalDoctorsDataSource _local;

  /// Remote data source for handling doctor entities using Appwrite.
  final RemoteDoctorsDataSource _remote;

  /// Constructor for the DoctorsRepositoryImpl class.
  ///
  /// Initializes local and remote data sources for doctor entities.
  DoctorsRepositoryImpl({
    required LocalDoctorsDataSource local,
    required RemoteDoctorsDataSource remote,
  })  : _local = local,
        _remote = remote;

  /// Retrieves a doctor entity with the specified ID from the local data source.
  ///
  /// Returns a [UserEntity] representing the doctor entity if found,
  /// or null if not found locally.
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

  /// Retrieves a list of doctor entities from the local data source.
  ///
  /// Returns a list of [UserEntity] representing the doctor entities.
  @override
  Future<List<UserEntity>> getLocalDoctors() async {
    final List<DoctorModel> response = await _local.getDoctors();

    List<UserEntity> doctors =
        response.map((doctor) => UserEntity.fromDoctor(doctor)).toList();

    return doctors;
  }

  /// Retrieves a list of doctor entities from the remote data source.
  ///
  /// Returns a list of [UserEntity] representing the doctor entities.
  @override
  Future<List<UserEntity>> getRemoteDoctors() async {
    final DocumentList response = await _remote.getDoctors();

    List<UserEntity> doctors = response.documents
        .map((doctor) => UserEntity.fromDocument(doctor))
        .toList();

    return doctors;
  }

  /// Sets the list of doctor entities in the local data source.
  ///
  /// Takes a list of [UserEntity] representing the doctor entities to be stored.
  @override
  Future<void> setDoctors({required List<UserEntity> doctors}) async {
    List<DoctorModel> model =
        doctors.map((doctor) => DoctorModel.toModel(doctor)).toList();

    await _local.setDoctors(doctors: model);
  }

  /// Removes all doctor entities from the local data source.
  @override
  Future<void> removeDoctors() async {
    await _local.removeDoctors();
  }
}
