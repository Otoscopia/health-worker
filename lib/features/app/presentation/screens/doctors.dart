import 'package:flutter/material.dart' as m;

import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/features/features.dart';

class Doctors extends ConsumerWidget {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<UserEntity> doctors = ref.watch(dashboardFutureProvider)[1] as List<UserEntity>;
    DoctorTableSource source = DoctorTableSource(doctors, ref);

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
          columns: [
            DataColumn2(
              label: const Text("Name"),
              size: ColumnSize.M,
              onSort: ((columnIndex, ascending) {
                debugPrint("constant: $ascending, $columnIndex");
              }),
            ),
            DataColumn2(
              label: const Text("Work Address"),
              size: ColumnSize.M,
              onSort: ((columnIndex, ascending) {
                debugPrint("constant: $ascending, $columnIndex");
              }),
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

class DoctorTableSource extends m.DataTableSource {
  final WidgetRef ref;
  List<UserEntity> _dataRows = [];

  DoctorTableSource(List<UserEntity> data, this.ref) {
    _dataRows = data;
  }

  @override
  m.DataRow getRow(int index) {
    final row = _dataRows[index];
    return DataRow2(
      color: m.MaterialStateProperty.all(transparent),
      cells: [
        m.DataCell(Text(row.name)),
        m.DataCell(Text(row.workAddress)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataRows.length;

  @override
  int get selectedRowCount => 0;

  void resetData(List<UserEntity> originalData) {
    _dataRows = originalData;
  }
}
