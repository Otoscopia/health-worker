import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

final futureSchoolsProvider = FutureProvider<List<SchoolEntity>>((ref) async {
  final schoolsUseCase = GetSchoolsRemoteUseCase(repository: applicationRepository);
  final schools = await schoolsUseCase.execute();
  return schools;
});
