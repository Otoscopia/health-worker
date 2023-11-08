import 'package:isar/isar.dart';

class ApplicationEntity {
  @enumerated
  final Theme theme;
  
  @enumerated
  final Language language;
  final String accentColor;

  ApplicationEntity({
    required this.theme,
    required this.language,
    required this.accentColor,
  });
}

enum Theme {
  light,
  dark,
  system,
}

enum Language {
  en,
  tl,
}
