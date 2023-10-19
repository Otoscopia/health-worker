import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart";

import "filter_card.dart";

class MedicalAttention extends ConsumerWidget {
  const MedicalAttention({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int amount = ref.watch(screeningListProvider).where((element) => element.status == "Medical Attention").length;
    return FilterCard(
      icon: medicalIcon,
      title: medical,
      amount: amount,
    );
  }
}