import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class DoctorsNote extends ConsumerWidget {
  final RemarksEntity remarks;
  const DoctorsNote({super.key, required this.remarks});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mediumHeight,
        CustomRichText(title: "Doctors Note", value: remarks.remarks),
        largeHeight,
        // CustomRichText(title: "✓ by", value: record.verifiedBy!),
        // Text("Verified on ${record.verifiedAt!} ")
        //     .italic()
        //     .textColor(primary)
        //     .bold()
        //     .fontSize(12)
      ],
    );
  }
}
