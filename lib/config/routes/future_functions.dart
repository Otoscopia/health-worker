import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_patient_provider.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart';
import 'package:isar/isar.dart';

import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/exports.dart';

Future<bool> loadUser(WidgetRef ref, bool isAuthenticated) async {
  final userCollection = isar.userModels;
  int index = await userCollection.count();

  try {
    session = await account.getSession(sessionId: currentSession);
    examiner = await account.get();
    if (index < 1) {
      ref.watch(userProvider.notifier).setUser(examiner.$id, examiner.name, examiner.email, examiner.labels);
      ref.watch(authenticationProvider.notifier).setAuthenicated(true);
    }
    final fetchUser = await userCollection.where().anyId().findFirst();
    ref.watch(userProvider.notifier).fetchUserFromDb(fetchUser!);
    ref.watch(patientListProvider.notifier).fetchPatients();
    ref.watch(screeningListProvider.notifier).fetchScreeningRecords();
    return true;
  } catch (error) {
    return false;
  }
}

Future<bool> loadUserOffline(WidgetRef ref) async {
  final userCollection = isar.userModels;
  int index = await userCollection.count();

  if (index > 0) {
    final fetchUser = await userCollection.where().anyId().findFirst();
    ref.watch(userProvider.notifier).fetchUserFromDb(fetchUser!);
    ref.watch(patientListProvider.notifier).fetchPatients();
    ref.watch(screeningListProvider.notifier).fetchScreeningRecords();
    return true;
  }
  return false;
}
