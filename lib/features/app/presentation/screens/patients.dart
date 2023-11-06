import 'package:flutter/material.dart' as m;

import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class Patient extends ConsumerWidget {
  const Patient({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<PatientEntity> patients = ref.read(patientsProvider);
    PatientTableSource source = PatientTableSource(patients, ref);

    return m.Theme(
      data: m.ThemeData(
        brightness: FluentTheme.of(context).brightness,
        cardColor: FluentTheme.of(context).cardColor,
      ),
      child: m.Material(
        color: transparent,
        child: PaginatedDataTable2(
          showCheckboxColumn: false,
          border: TableBorder.all(color: FluentTheme.of(context).cardColor),
          renderEmptyRowsInTheEnd: false,
          headingRowColor:
              m.MaterialStateProperty.resolveWith((states) => transparent),
          minWidth: 1000,
          rowsPerPage: 20,
          sortArrowAnimationDuration: const Duration(milliseconds: 0),
          columns: const [
            DataColumn2(
              label: Text(tableColumnName),
              size: ColumnSize.M,
            ),
            DataColumn2(
              label: Text(tableColumnAge),
              size: ColumnSize.M,
            ),
            DataColumn2(
              label: Text(tableColumnGender),
              size: ColumnSize.M,
            ),
            DataColumn2(
              label: Text(tableColumnDoctor),
              size: ColumnSize.M,
            ),
            DataColumn2(
              label: Text(tableColumnSchool),
              size: ColumnSize.M,
            ),
          ],
          source: source,
          empty: Center(
            child: Text(
              'No Patients found',
              style: FluentTheme.of(context).typography.subtitle,
            ),
          ),
        ),
      ),
    );
  }
}

class PatientTableSource extends m.DataTableSource {
  final WidgetRef ref;
  List<PatientEntity> _dataRows = [];

  PatientTableSource(List<PatientEntity> data, this.ref) {
    _dataRows = data;
  }

  @override
  m.DataRow getRow(int index) {
    final row = _dataRows[index];
    // final DecrpytUseCase decrypt = DecrpytUseCase(repository: applicationRepository);

    final PatientEntity patient = PatientEntity(
        id: row.id,
        name: row.name,
        gender: row.gender,
        birthdate: row.birthdate,
        school: row.school,
        schoolID: row.schoolID,
        guardiansName: row.guardiansName,
        guardiansPhone: row.guardiansPhone,
        creator: row.creator,
        doctor: row.doctor);

    final String doctor = ref.read(doctorsProvider).firstWhere((element) => element.id == patient.doctor).name;
    final String school = ref.read(schoolsProvider).firstWhere((element) => element.id == patient.school).name;

    final DateTime date = DateTime.parse(patient.birthdate);
    final int age = DateTime.now().year - date.year;
    return DataRow2(
      color: m.MaterialStateProperty.all(transparent),
      cells: [
        m.DataCell(Text(patient.name)),
        m.DataCell(Text(age.toString())),
        m.DataCell(Text(patient.gender)),
        m.DataCell(Text(doctor)),
        m.DataCell(Text(school)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataRows.length;

  @override
  int get selectedRowCount => 0;

  void resetData(List<PatientEntity> originalData) {
    _dataRows = originalData;
  }
}
