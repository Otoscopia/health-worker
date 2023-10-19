import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/features/app/exports.dart';

class CheifComplainWidget extends ConsumerWidget {
  const CheifComplainWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool cheifComplain = ref.watch(cheifComplainProvider)[4];
    bool cheifComplainError = ref.watch(cheifComplainErrorProvider);
    return Column(
      children: [
        const CheifComplain(),
        if (cheifComplainError) const CheifComplainError(),
        if (cheifComplain) const OtherComplain(),
      ],
    );
  }
}
