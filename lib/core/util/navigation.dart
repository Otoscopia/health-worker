import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

/// Defines the main navigation logic for the application.
///
/// The [Navigation] class is responsible for determining the initial screen
/// based on the authentication state of the user. It uses Riverpod's
/// [ConsumerWidget] to observe the authentication state and dynamically build
/// the UI accordingly.
///
/// Example usage:
/// ```dart
/// import 'navigation.dart';
///
/// //* Use Navigation widget as the main entry point in the app.
/// runApp(Navigation());
/// ```
class Navigation extends ConsumerWidget {
  /// Constructor for the Navigation widget.
  const Navigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Check if the user is authenticated or not.
    AuthenticationEntity? auth = ref.watch(authenticationStateProvider);

    // If the user is not authenticated, get the current user from the local
    // database and set the state of the authentication provider.
    if (auth == null) ref.read(authenticationStateProvider.notifier).getCurrentUser();

    // Return the appropriate widget based on the authentication state.
    return auth != null ? const OnBoarding() : const SignIn();
  }
}
