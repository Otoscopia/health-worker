import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/config/themes/colors.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:styled_widget/styled_widget.dart';

class DoctorsNote extends ConsumerWidget {
  final ScreeningModel record;
  const DoctorsNote({super.key, required this.record});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mediumHeight,
        CustomRichText(title: "Doctors Note", value: record.doctorsNote!),
        largeHeight,
        CustomRichText(title: "✓ by", value: record.verifiedBy!),
        Text("Verified on ${record.verifiedAt!} ")
            .italic()
            .textColor(primary)
            .bold()
            .fontSize(12)
      ],
    );
  }
}
