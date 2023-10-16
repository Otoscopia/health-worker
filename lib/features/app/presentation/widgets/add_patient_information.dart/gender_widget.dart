import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class GenderWidget extends ConsumerWidget {
  const GenderWidget({super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InfoLabel(
      label: genderTitle,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          genders.length,
          (index) {
            return RadioButton(
              checked: ref.watch(genderProvider) == index,
              content: Text(genders[index]),
              onChanged: (checked) {
                if (checked) {
                  ref.watch(genderProvider.notifier).setGender(index);
                  ref.watch(genderErrorProvider.notifier).setGenderError(false);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
