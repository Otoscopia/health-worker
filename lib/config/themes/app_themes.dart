import "package:fluent_ui/fluent_ui.dart";
import "package:otoscopia_health_worker/config/themes/colors.dart";
import "package:system_theme/system_theme.dart";

final FluentThemeData lightTheme = FluentThemeData(
  brightness: Brightness.light,
  accentColor: SystemTheme.accentColor.accent.toAccentColor(),
  scaffoldBackgroundColor: lightBackgroundAccent,
  cardColor: lightBackgroundAccent,
);

final FluentThemeData darkTheme = FluentThemeData(
  brightness: Brightness.dark,
  accentColor: SystemTheme.accentColor.accent.toAccentColor(),
  scaffoldBackgroundColor: darkBackground,
  cardColor: darkBackgroundAccent,
  fontFamily: "Quicksand",
  buttonTheme: ButtonThemeData.all(ButtonStyle(
    textStyle: ButtonState.all<TextStyle>(
      const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  )),
);
