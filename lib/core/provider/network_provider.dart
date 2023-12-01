import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Notifier class for tracking the network connection state.
///
/// The [NetworkNotifier] class extends [StateNotifier] to manage the
/// boolean state representing the network connection status. It provides
/// a method [setNetwork] to update the state when the network status changes.
class NetworkNotifier extends StateNotifier<bool> {
  /// Constructor for the [NetworkNotifier] class.
  ///
  /// Initializes the network state to `true` by default, indicating an active
  /// network connection.
  NetworkNotifier() : super(true);

  /// Method to set the network state.
  ///
  /// Updates the state only if the new value is different from the current state.
  /// This method is used to reflect changes in the network connection status.
  setNetwork(bool value) {
    if (value != state) {
      state = value;
    }
  }
}

/// Provider for managing the network connection state.
///
/// The [networkProvider] is a [StateNotifierProvider] that creates and provides
/// an instance of [NetworkNotifier]. This provider can be used throughout the
/// application to access and update the network connection status.
final networkProvider = StateNotifierProvider<NetworkNotifier, bool>((ref) {
  return NetworkNotifier();
});
