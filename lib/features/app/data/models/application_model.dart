import 'package:isar/isar.dart';

import 'package:health_worker/features/features.dart';

part 'application_model.g.dart';

@collection
@Name("application")
class ApplicationModel extends ApplicationEntity {
  Id ids = 1;

  ApplicationModel({
    required super.theme,
    required super.language,
    required super.accentColor,
  });
}
