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

    final List<ScreeningEntity> screenings = response
        .map((screening) => ScreeningEntity.fromModel(screening))
        .toList();

    return screenings;
  }

  // Get screenings from remote screenings data source
  @override
  Future<List<ScreeningEntity>> getRemoteScreenings() async {
    final DocumentList response = await _remote.getScreenings();

    final List<ScreeningEntity> screenings = response.documents
        .map((screening) => ScreeningEntity.fromDocument(screening))
        .toList();

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
    final ScreeningModel model = ScreeningModel.toModel(screening);

    await _local.setScreening(screenings: model);
  }

  // Set screenings from remote screenings data source
  @override
  Future<void> setRemoteScreening({required ScreeningEntity screening}) async {
    await _remote.setScreening(screening: screening);
  }

  // Set screenings from local screenings data source
  @override
  Future<void> setScreenings(
      {required List<ScreeningEntity> screenings}) async {
    final List<ScreeningModel> models = screenings
        .map((screening) => ScreeningModel.toModel(screening))
        .toList();

    await _local.setScreenings(screenings: models);
  }

  // Find screening from local screenings data source
  @override
  Future<ScreeningEntity?> findScreening({required String id}) async {
    final ScreeningModel? response = await _local.findScreening(id: id);

    if (response == null) {
      return null;
    } else {
      return ScreeningEntity.fromModel(response);
    }
  }

  // Set screening images from remote screenings data source
  @override
  Future<void> uploadScreeningImages(
      {required List<String> ids, required List<String> path}) async {
    await _remote.uploadScreeningImages(ids: ids, paths: path);
  }

  // Remove screenings from local screenings data source
  @override
  Future<void> removeScreenings() async {
    await _local.removeScreenings();
  }
}
