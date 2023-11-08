import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

class ScreeningsUseCases {
  final ScreeningsRepository _repository;

  ScreeningsUseCases({required ScreeningsRepository repository})
      : _repository = repository;

  // Get screening from remote database using screening repository
  Future<List<ScreeningEntity>> getRemoteScreenings() async {
    return await _repository.getRemoteScreenings();
  }

  // Get screening from local database using screening repository
  Future<List<ScreeningEntity>> getLocalScreenings() async {
    return await _repository.getLocalScreenings();
  }

  // Set screenings to local database using screening repository
  Future<void> setScreenings(List<ScreeningEntity> screenings) async {
    return await _repository.setScreenings(screenings: screenings);
  }

  // Set screening to local database using screening repository
  Future<void> setLocalScreening(ScreeningEntity screening) async {
    return await _repository.setLocalScreening(screening: screening);
  }

  // Set screening to remote database using screening repository
  Future<void> setRemoteScreening(ScreeningEntity screening) async {
    return await _repository.setRemoteScreening(screening: screening);
  }

  // Find screening from local database using screening repository
  Future<ScreeningEntity?> findScreening(String id) async {
    return await _repository.findScreening(id: id);
  }

  // Upload screening image to remote database using screening repository
  Future<void> uploadScreeningImages(List<String> ids, List<String> path) async {
    return await _repository.uploadScreeningImages(ids: ids, path: path);
  }

  // Get screening images from remote database using screening repository
  Future<List<File>> getScreeningImages(List<String> ids, List<String> paths) async {
    return await _repository.getScreeningImages(ids: ids, paths: paths);
  }
}
