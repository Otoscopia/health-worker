import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';

// Entry point of the application.
Future<void> main() async {
  // Ensure that Flutter is initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize dependency injection.
  await DependencyInjection().initialize();

  // Initialize Sentry for error tracking.
  await SentryFlutter.init(
    (options) {
      options.dsn = Env.sentry; // Sentry DSN for error tracking.
      options.tracesSampleRate = 1.0; // Sample rate for performance tracking.
    },
    // Run the application after Sentry initialization.
    appRunner: () => runApp(const ProviderScope(child: MyApp())),
  );
}

/// The main application widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      title: applicationTitle, // Set the title of the application.
      themeMode: ThemeMode.system, // Use the system's theme mode.
      theme: ApplicationTheme().lightTheme, // Set the light theme.
      darkTheme: ApplicationTheme().darkTheme, // Set the dark theme.
      home: const Navigation(), // Set the initial home page.
      debugShowCheckedModeBanner: false, // Disable the debug banner.
      // Build the application using Fluent UI and Responsive Builder.
      builder: (context, child) => ResponsiveBuilder(child: child!),
    );
  }
}
