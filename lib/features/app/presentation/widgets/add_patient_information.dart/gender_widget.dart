import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/constants/constants.dart';

import 'package:health_worker/features/app/presentation/providers/patient_information_provider.dart';

class GenderWidget extends ConsumerStatefulWidget {
  const GenderWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends ConsumerState<GenderWidget> {
  int? selected;
  @override
  Widget build(BuildContext context) {
    return InfoLabel(
      label: genderTitle,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          2,
          (index) {
            var label = [maleLabel, femaleLabel];
            return RadioButton(
              checked: selected == index,
              content: Text(label[index]),
              onChanged: (checked) {
                if (checked) {
                  setState(() {
                    selected = index;
                  });

                  ref.watch(patientInformationProvider.notifier).setGender(label[index], false);
                }
              },
            );
          },
        ),
      ),
    );
  }
}
