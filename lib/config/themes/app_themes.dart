import "package:fluent_ui/fluent_ui.dart";
import "package:system_theme/system_theme.dart";

import "package:health_worker/config/config.dart";

/// Defines the light and dark themes used in the application.
///
/// The [lightTheme] is used when the system theme is set to light mode,
/// while the [darkTheme] is used in dark mode. These themes include
/// configurations for brightness, accent color, scaffold background color,
/// card color, and custom font family.
///
/// The accent color is derived from the system's accent color.
/// The light theme is designed with a light background accent, while
/// the dark theme has a dark background accent.
///
/// Example usage:
/// ```dart
/// import 'app_themes.dart';
///
/// //* Set the light theme
/// final lightTheme = ApplicationTheme().lightTheme;
///
/// //* Set the dark theme
/// final darkTheme = ApplicationTheme().darkTheme;
/// ```

class ApplicationTheme {
  // Define the accent color for the application based on the system accent color.
  static final accentColor = SystemTheme.accentColor.accent.toAccentColor();

  /// Define the light theme for the application.
  final FluentThemeData lightTheme = FluentThemeData(
    brightness: Brightness.light, // Set the brightness to light.
    accentColor: accentColor, // Use the defined accent color.
    scaffoldBackgroundColor: lightBackgroundAccent, // Set scaffold background color.
    cardColor: lightBackground, // Set card background color for light theme.
  );

  /// Define the dark theme for the application.
  final FluentThemeData darkTheme = FluentThemeData(
    brightness: Brightness.dark, // Set the brightness to dark.
    accentColor: accentColor, // Use the defined accent color.
    scaffoldBackgroundColor: darkBackground, // Set scaffold background color.
    cardColor: darkBackgroundAccent, // Set card background color for dark theme.
    fontFamily: "Quicksand", // Set the default font family for the theme.
  );
}
