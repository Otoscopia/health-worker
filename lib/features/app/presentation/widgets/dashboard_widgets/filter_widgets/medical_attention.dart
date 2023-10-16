import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";

import "filter_card.dart";

class MedicalAttention extends ConsumerWidget {
  const MedicalAttention({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const FilterCard(
      icon: medicalIcon,
      title: medical,
      amount: 0,
    );
  }
}