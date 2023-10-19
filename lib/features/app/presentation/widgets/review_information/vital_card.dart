import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:styled_widget/styled_widget.dart';

class VitalCard extends ConsumerWidget {
  const VitalCard({super.key, required this.index, required this.amount});
  final int index;
  final String amount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icons[index],
          const SizedBox(width: 8),
          Column(
            children: [
              Text(vitals[index]).bold(),
              Text(amount).bold(),
            ],
          )
        ],
      ),
    );
  }
}
