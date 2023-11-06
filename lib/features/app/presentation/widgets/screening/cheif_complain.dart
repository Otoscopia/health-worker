import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class CheifComplain extends ConsumerWidget {
  const CheifComplain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<bool> checked = ref.watch(cheifComplainProvider);

    bool isMobile = ResponsiveBreakpoints.of(context).screenWidth < 680;
    ResponsiveRowColumnType layout =
        isMobile ? ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW;
    
    return InfoLabel(
      label: cheifComplainLabel,
      child: ResponsiveRowColumn(
        layout: layout,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        rowMainAxisSize: MainAxisSize.max,
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        columnMainAxisAlignment: MainAxisAlignment.start,
        columnSpacing: 8,
        rowSpacing: 8,
        children: List.generate(
          complains.length,
          (index) {
            return ResponsiveRowColumnItem(
              child: Checkbox(
                content: Text(complains[index]),
                checked: checked[index],
                onChanged: (value) {
                  ref
                      .watch(cheifComplainProvider.notifier)
                      .setState(index, value);
                  ref
                      .watch(cheifComplainErrorProvider.notifier)
                      .setState(false);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
