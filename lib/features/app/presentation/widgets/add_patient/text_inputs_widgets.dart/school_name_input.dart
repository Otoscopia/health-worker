import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/core.dart";
import "package:health_worker/features/features.dart";

class SchoolNameInput extends ConsumerWidget {
  const SchoolNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<SchoolEntity> schools = ref.read(schoolsProvider);
    
    var items = schools
        .map<AutoSuggestBoxItem<SchoolEntity>>(
          (school) => AutoSuggestBoxItem<SchoolEntity>(
            value: school,
            label: school.abbr,
          ),
        )
        .toList();

    return InfoLabel(
      label: schoolNameLabel,
      child: AutoSuggestBox(
        items: items,
        onSelected: (value) => ref
            .read(schoolNameProvider.notifier)
            .setSchoolName(value.value!.id),
      ),
    );
  }
}
