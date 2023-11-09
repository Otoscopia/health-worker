import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/core.dart";
import "package:health_worker/features/features.dart";

class SchoolNameInput extends ConsumerWidget {
  const SchoolNameInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<SchoolEntity> schools = ref.read(schoolsProvider);

    List<AutoSuggestBoxItem> items = schools
        .map<AutoSuggestBoxItem<SchoolEntity>>(
          (school) => AutoSuggestBoxItem<SchoolEntity>(
            label: school.abbr,
            value: school,
            child: Text(school.abbr),
          ),
        )
        .toList();

    return SizedBox(
      width: double.infinity,
      child: InfoLabel(
        label: schoolNameLabel,
        child: AutoSuggestBox(
          items: items,
          placeholder: schoolNamePlaceholder,
          onSelected: (value) {
            SchoolEntity school = value.value;
            ref.read(schoolNameProvider.notifier).setSchoolName(school.id);
          },
        ),
      ),
    );
  }
}
