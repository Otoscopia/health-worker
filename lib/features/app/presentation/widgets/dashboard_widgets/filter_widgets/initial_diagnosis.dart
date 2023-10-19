import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart";

import "filter_card.dart";

class InitialDiagnosis extends ConsumerWidget {
  const InitialDiagnosis({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int amount = ref.watch(screeningListProvider).where((element) => element.status == "Initial").length;
    return FilterCard(
      icon: initialIcon,
      title: initial,
      amount: amount,
    );
  }
}
