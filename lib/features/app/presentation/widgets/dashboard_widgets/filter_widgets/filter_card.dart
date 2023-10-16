import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:styled_widget/styled_widget.dart";

import "package:health_worker/config/exports.dart";
import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/exports.dart";

class FilterCard extends ConsumerWidget {
  final Icon icon;
  final String title;
  final int amount;

  const FilterCard({
    super.key,
    required this.icon,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var filter = ref.watch(filterProvider.notifier);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
          onTap: () {
            filter.setFilter(title.split(" ")[0]);
          },
          onDoubleTap: () {
            filter.setFilter("");
          },
          child: Card(
            backgroundColor: primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                icon,
                Center(
                    child: Text(amount.toString())
                        .fontSize(20)
                        .bold()
                        .textColor(Colors.white)),
                Center(child: Text(title).textColor(Colors.white)),
                largeHeight
              ],
            ),
          )),
    );
  }
}
