import 'package:flutter/material.dart' as m;

import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/features/features.dart';

class Schools extends ConsumerWidget {
  const Schools({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<SchoolEntity> schools = ref.read(schoolsProvider);

    SchoolsTableSource source = SchoolsTableSource(schools, ref);

    Color color = FluentTheme.of(context).cardColor;

    return m.Theme(
      data: m.ThemeData(
        brightness: FluentTheme.of(context).brightness,
        cardColor: color,
      ),
      child: m.Material(
        color: transparent,
        child: PaginatedDataTable2(
          showCheckboxColumn: false,
          border: TableBorder.all(color: color),
          headingRowColor: m.MaterialStateProperty.resolveWith((states) => transparent),
          renderEmptyRowsInTheEnd: false,
          minWidth: 1000,
          rowsPerPage: 20,
          sortArrowAnimationDuration: const Duration(milliseconds: 0),
          columns: [
            DataColumn2(
              label: const Text("Code"),
              size: ColumnSize.S,
              onSort: ((columnIndex, ascending) {
                debugPrint("constant: $ascending, $columnIndex");
              }),
            ),
            DataColumn2(
              label: const Text("Abbreviation"),
              size: ColumnSize.M,
              onSort: ((columnIndex, ascending) {
                debugPrint("constant: $ascending, $columnIndex");
              }),
            ),
            DataColumn2(
              label: const Text("Name"),
              size: ColumnSize.M,
              onSort: ((columnIndex, ascending) {
                debugPrint("constant: $ascending, $columnIndex");
              }),
            ),
            DataColumn2(
              label: const Text("Address"),
              size: ColumnSize.M,
              onSort: ((columnIndex, ascending) {
                debugPrint("constant: $ascending, $columnIndex");
              }),
            ),
          ],
          source: source,
          empty: Center(
            child: Text(
              'No Schools found',
              style: FluentTheme.of(context).typography.subtitle,
            ),
          ),
        ),
      ),
    );
  }
}

class SchoolsTableSource extends m.DataTableSource {
  final WidgetRef ref;
  List<SchoolEntity> _dataRows = [];

  SchoolsTableSource(List<SchoolEntity> data, this.ref) {
    _dataRows = data;
  }

  @override
  m.DataRow getRow(int index) {
    final row = _dataRows[index];
    return DataRow2(
      color: m.MaterialStateProperty.all(transparent),
      cells: [
        m.DataCell(Text(row.code)),
        m.DataCell(Text(row.abbr)),
        m.DataCell(Text(row.name)),
        m.DataCell(Text(row.address)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataRows.length;

  @override
  int get selectedRowCount => 0;

  void resetData(List<SchoolEntity> originalData) {
    _dataRows = originalData;
  }
}
