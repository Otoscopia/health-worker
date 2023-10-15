import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';

loadUser(WidgetRef ref, bool isAuthenticated, bool connected) async {
  int user = await isar.userModels.count();

  if (user == 1) {
    if (connected) {
      debugPrint("online");
      // sync data to the cloud
      return true;
    } else {
      debugPrint("offline");
      // sync data from isar
      return true;
    }
  } else {
    return false;
  }
}
