import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class AddPatientButton extends ConsumerWidget {
  final GlobalKey<FormState> globalKey;
  const AddPatientButton({super.key, required this.globalKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 150,
      child: FilledButton(
        child: const Text(continueLabel),
        onPressed: () {
          addPatient(context, ref, globalKey);
        },
      ),
    );
  }
}
