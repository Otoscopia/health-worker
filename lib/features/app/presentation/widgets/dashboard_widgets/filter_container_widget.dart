import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/exports.dart";

class FilterWidget extends ConsumerWidget {
  final List<ScreeningModel> status;
  const FilterWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int finalDiag = status.where((element) => element.status == "Final").length;
    int pendingDiag = status.where((element) => element.status == "Pending").length;
    int initialDiag = status.where((element) => element.status == "Initial").length;
    int medicalDiag = status.where((element) => element.status == "Medical").length;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(flex: 1, child: FinalDiagnosis(amount: finalDiag)),
          mediumWidth,
          Expanded(flex: 1, child: PendingDiagnosis(amount: pendingDiag)),
          mediumWidth,
          Expanded(flex: 1, child: InitialDiagnosis(amount: initialDiag)),
          mediumWidth,
          Expanded(flex: 1, child: MedicalAttention(amount: medicalDiag)),
        ],
      ),
    );
  }
}
