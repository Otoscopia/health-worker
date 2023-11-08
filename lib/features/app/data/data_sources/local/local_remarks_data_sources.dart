import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class LocalRemarksDataSource {
  final Isar _isar;

  LocalRemarksDataSource() : _isar = isar;

  // Get remarks from isar database
  Future<void> setRemarks({required RemarksModel remarks}) async {
    try {
      // write remarks collection
      await _isar.writeTxn(() async {
        await _isar.remarksModels.put(remarks);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  // Find remarks from isar database
  Future<RemarksModel?> findRemarks({required String id}) async {
    try {
      final RemarksModel? response = await _isar.remarksModels
          .where()
          .filter()
          .idEqualTo(id, caseSensitive: false)
          .findFirst();

      return response;
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
