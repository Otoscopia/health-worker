import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureSchoolsProvider = FutureProvider<List<SchoolEntity>>((ref) async {
  final schoolsUseCase = GetSchoolsRemoteUseCase(repository: applicationRepository);
  final schools = await schoolsUseCase.execute();
  ref.read(schoolsProvider.notifier).setSchool(schools);
  return schools;
});

class SchoolsNotifier extends StateNotifier<List<SchoolEntity>> {
  SchoolsNotifier(): super([]);

  setSchool(List<SchoolEntity> schools) => state = schools; 

  SchoolEntity findSchool(String id) {
    final school = state.where((element) => element.id == id).first;
    return school;
  }
}

final schoolsProvider = StateNotifierProvider<SchoolsNotifier, List<SchoolEntity>>((ref) {
  return SchoolsNotifier();
});
