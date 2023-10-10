import "package:fluent_ui/fluent_ui.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/config/themes/colors.dart";

import "table_widgets/material_widget.dart";

class TableWidget extends ConsumerWidget {
  const TableWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      backgroundColor: transparent,
      borderColor: transparent,
      child: SizedBox(
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: MaterialWidget(),
          ),
        ),
      ),
    );
  }
}
