import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";

import "filter_card.dart";

class PendingDiagnosis extends ConsumerWidget { 
  final int amount;
  const PendingDiagnosis({super.key, required this.amount });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilterCard(
      icon: pendingIcon,
      title: pending,
      amount: amount,
    );
  }
}
