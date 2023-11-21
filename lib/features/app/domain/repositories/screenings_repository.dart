import 'package:appwrite/models.dart';

import 'package:health_worker/features/features.dart';

abstract class ScreeningsRepository {
  /// Get screening from remote database
  Future<List<ScreeningEntity>> getRemoteScreenings();

  /// Get screening from local database
  Future<List<ScreeningEntity>> getLocalScreenings();

  /// Set screenings to local database
  Future<void> setScreenings({required List<ScreeningEntity> screenings});

  /// Set screening to local database
  Future<void> setLocalScreening({required ScreeningEntity screening});

  /// Set screening to remote database
  Future<void> setRemoteScreening({required ScreeningEntity screening});

  /// Find screening to local database
  Future<ScreeningEntity?> findScreening({required String id});

  /// Upload screening images to remote database
  Future<void> uploadScreeningImages({required List<String> ids, required List<String> path});

  /// Get screening images from remote database
  Future<List<File>> getScreeningImages({required List<String> ids, required List<String> paths});

  /// Remove screening from local database
  Future<void> removeScreenings();
}
