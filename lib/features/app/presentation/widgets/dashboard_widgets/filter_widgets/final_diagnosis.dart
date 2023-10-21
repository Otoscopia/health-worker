import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";

import "filter_card.dart";

class FinalDiagnosis extends ConsumerWidget {
  final int amount;
  const FinalDiagnosis({super.key, required this.amount});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilterCard(
      icon: finalIcon,
      title: finalFilter,
      amount: amount,
    );
  }
}
