import 'package:health_worker/features/features.dart';

class ApplicationRepositoryImpl implements ApplicationRepository {
  final ApplicationDataSource _application;

  ApplicationRepositoryImpl({required ApplicationDataSource application})
      : _application = application;

  @override
  Future<String> getAccentColor() async {
    final String? response = await _application.getAccentColor();

    if (response != null) {
      return response;
    } else {
      return '';
    }
  }

  @override
  Future<Language> getLanguage() async {
    final Language? response = await _application.getLanguage();

    if (response != null) {
      return response;
    } else {
      return Language.en;
    }
  }

  @override
  Future<Theme> getTheme() async {
    final Theme? response = await _application.getTheme();

    if (response != null) {
      return response;
    } else {
      return Theme.light;
    }
  }

  @override
  Future<void> setAccentColor({required String accentColor}) async {
    await _application.setAccentColor(accentColor: accentColor);
  }

  @override
  Future<void> setLanguage({required Language language}) async {
    await _application.setLanguage(language: language);
  }

  @override
  Future<void> setTheme({required Theme theme}) async {
    await _application.setTheme(theme: theme);
  }
}
