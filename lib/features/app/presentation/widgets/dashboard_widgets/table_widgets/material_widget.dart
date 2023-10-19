import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/material.dart" as material;
import "package:flutter_riverpod/flutter_riverpod.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/exports.dart";
import "package:health_worker/features/app/presentation/pages/patient_record.dart";
import "package:health_worker/features/app/presentation/providers/fetch_patient_provider.dart";
import "package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart";
import "package:intl/intl.dart";

class MaterialWidget extends ConsumerWidget {
  const MaterialWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<PatientModel> patients = ref.watch(patientListProvider);
    List<ScreeningModel> screenings = ref.watch(screeningListProvider);
    String filter = ref.watch(filterProvider);

    List<Map<String, Object>> data = patients.map((patient) {
      ScreeningModel screening =
          screenings.where((element) => element.owner == patient.uid).first;
      return {
        "patient": patient,
        "fullname": patient.fullName,
        "gender": patient.gender,
        "status": screening.status,
        "uploadedDate": screening.uploadedAt,
      };
    }).toList();

    data = data.where((element) => element["status"].toString().toLowerCase().contains(filter.toLowerCase())).toList();

    return material.Material(
      borderRadius: BorderRadius.circular(4),
      child: material.DataTable(
          showCheckboxColumn: false,
          border: TableBorder(borderRadius: BorderRadius.circular(4)),
          columns: const [
            material.DataColumn(label: Text(patientName)),
            material.DataColumn(label: Text(genderLabel)),
            material.DataColumn(label: Text(medicalRecordStatus)),
            material.DataColumn(label: Text(uploadedDate)),
          ],
          rows: data.map((row) {
            final PatientModel patient = row["patient"] as PatientModel;
            return material.DataRow(cells: [
              material.DataCell(Text(row["fullname"].toString())),
              material.DataCell(Text(row["gender"].toString())),
              material.DataCell(Text(row["status"].toString())),
              material.DataCell(Text(DateFormat("MMM dd, y").format(DateTime.parse(row["uploadedDate"].toString())))),
            ],
            onSelectChanged: (value) => Navigator.push(context, FluentPageRoute(builder: (context) => PatientRecord(patient: patient))),
            );
          }).toList()),
    );
  }
}
