import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/exports.dart";

class FilterWidget extends ConsumerWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: FinalDiagnosis()),
          mediumWidth,
          Expanded(flex: 1, child: PendingDiagnosis()),
          mediumWidth,
          Expanded(flex: 1, child: InitialDiagnosis()),
          mediumWidth,
          Expanded(flex: 1, child: MedicalAttention()),
        ],
      ),
    );
  }
}
