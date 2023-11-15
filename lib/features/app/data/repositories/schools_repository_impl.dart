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

    final List<SchoolEntity> schools =
        response.map((school) => SchoolEntity.fromModel(school)).toList();

    return schools;
  }

  // Get schools from remote schools data source
  @override
  Future<List<SchoolEntity>> getRemoteSchools() async {
    final DocumentList response = await _remote.getSchools();

    final List<SchoolEntity> schools = response.documents
        .map((school) => SchoolEntity.fromDocument(school))
        .toList();

    return schools;
  }

  // Set schools from local schools data source
  @override
  Future<void> setSchools({required List<SchoolEntity> schools}) async {
    final List<SchoolModel> response = schools.map(
      (school) {
        return SchoolModel.toModel(school);
      },
    ).toList();

    await _local.setSchools(schools: response);
  }

  // Find schools from remote schools data source
  @override
  Future<SchoolEntity?> findSchool({required String id}) async {
    final SchoolModel? response = await _local.findSchool(id: id);

    if (response != null) {
      return SchoolEntity.fromModel(response);
    } else {
      return null;
    }
  }

  // Remove schools from local schools data source
  @override
  Future<void> removeSchools() async {
    await _local.removeSchools();
  }
}
