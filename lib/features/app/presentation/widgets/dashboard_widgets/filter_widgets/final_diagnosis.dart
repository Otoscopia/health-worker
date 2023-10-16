import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";

import "filter_card.dart";

class FinalDiagnosis extends ConsumerWidget {
  const FinalDiagnosis({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const FilterCard(
      icon: finalIcon,
      title: finalFilter,
      amount: 0,
    );
  }
}
