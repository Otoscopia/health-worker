import "package:fluent_ui/fluent_ui.dart";
import "package:system_theme/system_theme.dart";

import "package:health_worker/config/config.dart";

final accentColor = SystemTheme.accentColor.accent.toAccentColor();

final FluentThemeData lightTheme = FluentThemeData(
  brightness: Brightness.light,
  accentColor: accentColor,
  scaffoldBackgroundColor: lightBackgroundAccent,
  cardColor: lightBackgroundAccent,
  typography: Typography.raw(
    display: DarkTextStyles().display,
    titleLarge: DarkTextStyles().titleLarge,
    title: DarkTextStyles().title,
    subtitle: DarkTextStyles().subtitle,
    bodyLarge: DarkTextStyles().bodyLarge,
    bodyStrong: DarkTextStyles().bodyStrong,
    body: DarkTextStyles().body,
    caption: DarkTextStyles().caption,
  ),
);

final FluentThemeData darkTheme = FluentThemeData(
  brightness: Brightness.dark,
  accentColor: accentColor,
  scaffoldBackgroundColor: darkBackground,
  cardColor: darkBackgroundAccent,
  fontFamily: "Quicksand",
  typography: Typography.raw(
    display: LightTextStyles().display,
    titleLarge: LightTextStyles().titleLarge,
    title: LightTextStyles().title,
    subtitle: LightTextStyles().subtitle,
    bodyLarge: LightTextStyles().bodyLarge,
    bodyStrong: LightTextStyles().bodyStrong,
    body: LightTextStyles().body,
    caption: LightTextStyles().caption,
  ),
);