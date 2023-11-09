import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureSchoolsProvider = FutureProvider<List<SchoolEntity>>((ref) async {
  final response = await useCases.schoolsUseCase.getRemoteSchools();
  
  if (response.isNotEmpty) {
    final List<AssignmentEntity> assignments = ref.watch(assignmentProvider);

    if (assignments.isNotEmpty) {
      final school = response.where((element) => assignments.any((assignment) => assignment.school == element.id)).toList();

      await useCases.schoolsUseCase.setSchools(school);
      
      ref.read(schoolsProvider.notifier).setSchool(school);

      return response;
    }
  }

  return response;
});

class SchoolsNotifier extends StateNotifier<List<SchoolEntity>> {
  SchoolsNotifier() : super([]);

  setSchool(List<SchoolEntity> schools) => state = schools;

  SchoolEntity findSchool(String id) {
    final school = state.where((element) => element.id == id).first;
    return school;
  }
}

final schoolsProvider = StateNotifierProvider<SchoolsNotifier, List<SchoolEntity>>((ref) {
  return SchoolsNotifier();
});
