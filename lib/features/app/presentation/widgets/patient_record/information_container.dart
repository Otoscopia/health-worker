import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_record/information_card.dart';
import 'package:intl/intl.dart';

class InformationContainer extends ConsumerWidget {
  final ScreeningModel record;
  const InformationContainer({super.key, required this.record});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        InformationCard(icon: uploadedIcon,title: uploadedDate,subtitle: DateFormat("MMM. dd, y hh:mm  ").format(record.screenedAt)),
        InformationCard(icon: weightIcon, title: weight, subtitle: record.weight),
        InformationCard(icon: temperatureIcon,title: temperature,subtitle: record.temperature),
        InformationCard(icon: bloodPressureIcon,title: bloodPressure,subtitle: record.bloodPressure),
      ],
    );
  }
}
