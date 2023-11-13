import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/app.dart';

Future<bool> futureProvider(WidgetRef ref) async {
  // Late declare userResponse variable
  late final UserEntity userResponse;

  // Late declare assignmentResponse variable
  late final List<AssignmentEntity> assignmentResponse;

  // Late declare schoolsResponse variable
  late final List<SchoolEntity> schoolsResponse;

  // Get user
  userResponse = await user(ref);

  // Get assignments
  assignmentResponse = await assignments(ref, userResponse.id);

  // Get schools
  schoolsResponse = await schools(ref, assignmentResponse);

  // Get patients
  await patients(ref, schoolsResponse);

  // Get screenings
  await screenings(ref, assignmentResponse);

  // Get doctors
  await doctors(ref);

  await ref.read(futureTableProvider.future);

  return Future.value(true);
}
