import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/app.dart';

/// Asynchronous function to initialize and fetch various data for the application.
///
/// The [futureProvider] function is responsible for coordinating the retrieval
/// of different data needed for the application. It utilizes other asynchronous
/// functions such as [user], [assignments], [schools], [patients], [screenings],
/// [doctors], and [futureTableProvider.future]. The function ensures that the
/// necessary data is fetched and processed in the correct order. The overall
/// success of the data fetching process is indicated by returning `true`.
///
/// Example usage:
/// ```dart
/// import 'future_provider.dart';
///
/// //* Initialize and fetch data using the futureProvider.
/// final success = await futureProvider(ref);
/// ```
Future<bool> futureProvider(WidgetRef ref) async {
  late final UserEntity userResponse;

  late final List<AssignmentEntity> assignmentResponse;

  late final List<SchoolEntity> schoolsResponse;

  userResponse = await user(ref);

  assignmentResponse = await assignments(ref, userResponse.id);

  schoolsResponse = await schools(ref, assignmentResponse);

  await patients(ref, schoolsResponse);

  await screenings(ref, assignmentResponse);

  await doctors(ref);

  await ref.read(futureTableProvider.future);

  return Future.value(true);
}
