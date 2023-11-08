import 'package:isar/isar.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class ApplicationDataSource {
  final Isar _isar;

  ApplicationDataSource() : _isar = isar;

  Future<Theme?> getTheme() async {
    try {
      final ApplicationModel? response =
          await _isar.applicationModels.where().findFirst();

      if (response != null) {
        return response.theme;
      } else {
        return null;
      }
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setTheme({required Theme theme}) async {
    try {
      final ApplicationModel model = ApplicationModel(
          theme: theme, language: Language.en, accentColor: '');

      await _isar.writeTxn(() async {
        await _isar.applicationModels.put(model);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<Language?> getLanguage() async {
    try {
      final ApplicationModel? response =
          await _isar.applicationModels.where().findFirst();

      if (response != null) {
        return response.language;
      } else {
        return null;
      }
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setLanguage({required Language language}) async {
    try {
      final ApplicationModel model = ApplicationModel(
          theme: Theme.light, language: language, accentColor: '');

      await _isar.writeTxn(() async {
        await _isar.applicationModels.put(model);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<String?> getAccentColor() async {
    try {
      final ApplicationModel? response =
          await _isar.applicationModels.where().findFirst();

      if (response != null) {
        return response.accentColor;
      } else {
        return null;
      }
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }

  Future<void> setAccentColor({required String accentColor}) async {
    try {
      final ApplicationModel model = ApplicationModel(
          theme: Theme.light, language: Language.en, accentColor: accentColor);

      await _isar.writeTxn(() async {
        await _isar.applicationModels.put(model);
      });
    } on IsarError catch (error) {
      throw Exception(error.message);
    }
  }
}
