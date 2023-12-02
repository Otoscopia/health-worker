import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class InformationContainer extends ConsumerWidget {
  final ScreeningEntity record;
  const InformationContainer({super.key, required this.record});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateFormat dateFormat = DateFormat("MMM. dd, y hh:mm  ");
    String date = dateFormat.format(DateTime.parse(record.createdAt));

    return Row(
      children: [
        UploadCard(title: "Uploaded Date", subtitle: date),
        VitalCard(index: 0, amount: "${record.weight} kg"),
        VitalCard(index: 1, amount: "${record.height} cm"),
        VitalCard(index: 2, amount: "${record.temperature} °C"),
      ],
    );
  }
}

class UploadCard extends ConsumerWidget {
  final String title, subtitle;
  const UploadCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Ionicons.cloud).iconColor(secondary),
          mediumWidth,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [mediumHeight, Text(title), Text(subtitle).bold()],
          ),
        ],
      ),
    );
  }
}
