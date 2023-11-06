import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/core.dart";
import "package:health_worker/features/features.dart";

class SchoolNameInput extends ConsumerWidget {
  const SchoolNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<SchoolEntity> schools = ref.read(schoolsProvider);
    final List<AssignmentEntity> assignments = ref.watch(assignmentProvider);
    final String user = ref.watch(userProvider).id;
    assignments.removeWhere((element) => element.nurse != user);
    schools.removeWhere((element) =>
        assignments.any((assignment) => assignment.school != element.id));

    var items = schools
        .map<ComboBoxItem<SchoolEntity>>(
          (school) => ComboBoxItem<SchoolEntity>(
            value: school,
            child: Text(school.abbr),
          ),
        )
        .toList();

    String selected = ref.watch(schoolNameProvider);

    SchoolEntity? value =
        schools.where((element) => element.id == selected).lastOrNull;

    return SizedBox(
      width: double.infinity,
      child: InfoLabel(
        label: schoolNameLabel,
        child: ComboBox(
          value: value,
          items: items,
          placeholder: const Text(schoolNamePlaceholder),
          onChanged: (value) {
            SchoolEntity school = value as SchoolEntity;
            ref.read(schoolNameProvider.notifier).setSchoolName(school.id);
          },
        ),
      ),
    );
  }
}
