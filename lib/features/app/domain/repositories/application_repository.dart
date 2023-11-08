import 'package:health_worker/features/features.dart';

abstract class ApplicationRepository {
  // Get application theme from local database
  Future<Theme> getTheme();

  // Set application theme to local database
  Future<void> setTheme({required Theme theme});

  // Get application language from local database
  Future<Language> getLanguage();

  // Set application language to local database
  Future<void> setLanguage({required Language language});

  // Get application accent color from local database
  Future<String> getAccentColor();

  // Set application accent color to local database
  Future<void> setAccentColor({required String accentColor});
}
