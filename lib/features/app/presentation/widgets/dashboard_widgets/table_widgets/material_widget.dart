import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/material.dart" as material;
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/constants/constants.dart";

class MaterialWidget extends ConsumerWidget {
  const MaterialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return material.Material(
      borderRadius: BorderRadius.circular(4),
      child: material.DataTable(
        showCheckboxColumn: false,
        border: TableBorder(borderRadius: BorderRadius.circular(4)),
        columns: const [
          material.DataColumn(label: Text(patientName)),
          material.DataColumn(label: Text(gender)),
          material.DataColumn(label: Text(medicalRecordStatus)),
          material.DataColumn(label: Text(uploadedDate)),
        ],
        rows: const [],
      ),
    );
  }
}
