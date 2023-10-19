import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart";

import "filter_card.dart";

class FinalDiagnosis extends ConsumerWidget {
  const FinalDiagnosis({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int amount = ref.watch(screeningListProvider).where((element) => element.status == "Final").length;
    return FilterCard(
      icon: finalIcon,
      title: finalFilter,
      amount: amount,
    );
  }
}
