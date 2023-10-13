import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/presentation/providers/screening_provider.dart';

class PatientTakingMedication extends ConsumerStatefulWidget {
  const PatientTakingMedication({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PatientTakingMedicationState();
}

class _PatientTakingMedicationState extends ConsumerState<PatientTakingMedication> {
  int? selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Does the patient currently taking any medication?"),
        const SizedBox(width: 16),
        Row(
          children: List.generate(2, (index) {
            var label = ["Yes", "No"];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: RadioButton(
                checked: selected == index,
                content: Text(label[index]),
                onChanged: (changed) {
                  if (changed) {
                    setState(() {
                      selected = index;
                    });

                    ref.watch(screeningProvider.notifier).setProvider(
                          "",
                          "",
                          "",
                          "",
                          "",
                          "",
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          null,
                          selected == 0 ? true : false,
                        );
                  }
                },
              ),
            );
          }),
        )
      ],
    );
  }
}
