import 'package:flutter/material.dart' as m;

import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/domain/use_cases/decrypt_use_case.dart';
import 'package:health_worker/features/features.dart';

class Patients extends ConsumerWidget {
  const Patients({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<PatientEntity> patients =
        ref.read(dashboardFutureProvider)[4] as List<PatientEntity>;
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
          border: TableBorder.all(color: darkBackgroundAccent),
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
              'No doctors found',
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
    final DecrpytUseCase decrypt = DecrpytUseCase(repository: applicationRepository);

    final PatientEntity patient = PatientEntity(
        id: row.id,
        name: decrypt.execute(data: row.name),
        gender: decrypt.execute(data: row.gender),
        birthdate: decrypt.execute(data: row.birthdate),
        school: "decrypt.execute(data: row.school)",
        schoolID: decrypt.execute(data: row.schoolID),
        guardiansName: decrypt.execute(data: row.guardiansName),
        guardiansPhone: decrypt.execute(data: row.guardiansPhone),
        creator: row.creator,
        doctor: row.doctor);

    final DateTime date = DateTime.parse(patient.birthdate);
    final int age = DateTime.now().year - date.year;
    return DataRow2(
      color: m.MaterialStateProperty.all(transparent),
      cells: [
        m.DataCell(Text(patient.name)),
        m.DataCell(Text(age.toString())),
        m.DataCell(Text(patient.gender)),
        m.DataCell(Text(patient.doctor)),
        const m.DataCell(Text("row.school")),
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
