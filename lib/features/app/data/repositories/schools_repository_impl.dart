import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class SchoolsRepositoryImpl implements SchoolsRepository {
  final LocalSchoolsDataSource _local;
  final RemoteSchoolsDataSource _remote;

  SchoolsRepositoryImpl({
    required LocalSchoolsDataSource local,
    required RemoteSchoolsDataSource remote,
  })  : _local = local,
        _remote = remote;

  // Get schools from local schools data source
  @override
  Future<List<SchoolEntity>> getLocalSchools() async {
    final List<SchoolModel> response = await _local.getSchools();

    final List<SchoolEntity> schools = response.map(
      (school) {
        return SchoolEntity(
          id: school.id,
          name: school.name,
          abbr: school.abbr,
          address: school.address,
          code: school.code,
        );
      },
    ).toList();

    return schools;
  }

  // Get schools from remote schools data source
  @override
  Future<List<SchoolEntity>> getRemoteSchools() async {
    final DocumentList response = await _remote.getSchools();

    final List<SchoolEntity> schools = response.documents.map(
      (school) {
        return SchoolEntity(
          id: school.$id,
          name: school.data["name"],
          abbr: school.data["abbr"],
          address: school.data["address"],
          code: school.data["code"],
        );
      },
    ).toList();

    return schools;
  }

  // Set schools from local schools data source
  @override
  Future<void> setSchools({required List<SchoolEntity> schools}) async {
    final List<SchoolModel> response = schools.map(
      (school) {
        return SchoolModel(
          id: school.id,
          name: school.name,
          abbr: school.abbr,
          address: school.address,
          code: school.code,
        );
      },
    ).toList();

    await _local.setSchools(schools: response);
  }

  // Find schools from remote schools data source
  @override
  Future<SchoolEntity?> findSchool({required String id}) async {
    final SchoolModel? response = await _local.findSchool(id: id);

    if (response != null) {
      return SchoolEntity(
        id: response.id,
        name: response.name,
        abbr: response.abbr,
        address: response.address,
        code: response.code,
      );
    } else {
      return null;
    }
  }
}
