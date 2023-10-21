import "package:fluent_ui/fluent_ui.dart";
import "package:flutter/material.dart" as material;
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:intl/intl.dart";

import "package:health_worker/core/exports.dart";
import "package:health_worker/features/app/exports.dart";
import "package:health_worker/features/app/presentation/pages/patient_record.dart";

class MaterialWidget extends ConsumerWidget {
  final List<PatientModel> patientList;
  final List<ScreeningModel> screeningList;
  const MaterialWidget(
      {super.key, required this.patientList, required this.screeningList});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String filter = ref.watch(filterProvider);

    List<Map<String, Object>> data = patientList.map((patient) {
      ScreeningModel? screening = screeningList.where((element) => element.owner == patient.uid).first;
      return {
        "patient": patient,
        "fullname": patient.fullName,
        "gender": patient.gender,
        "status": screening.status,
        "uploadedDate": screening.screenedAt,
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
          return material.DataRow(
            cells: [
              material.DataCell(Text(row["fullname"].toString())),
              material.DataCell(Text(row["gender"].toString())),
              material.DataCell(Text(row["status"].toString())),
              material.DataCell(Text(DateFormat("MMM dd, y").format(DateTime.parse(row["uploadedDate"].toString())))),
            ],
            onSelectChanged: (value) => Navigator.push(context, FluentPageRoute(builder: (context) => PatientRecord(patient: patient))),
          );
        }).toList(),
      ),
    );
  }
}
