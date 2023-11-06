import 'package:flutter/material.dart';

import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/features/features.dart';

class HomeTableSource extends DataTableSource {
  final WidgetRef ref;
  List<TableEntity> _dataRows = [];
  final BuildContext context;

  HomeTableSource(List<TableEntity> data, this.ref, this.context) {
    _dataRows = data;
  }

  @override
  DataRow getRow(int index) {
    final row = _dataRows[index];
    return DataRow2(
      onSelectChanged: (value) {
        if (value != null && value) {
          Navigator.push(context, FluentPageRoute(builder: (context) => PatientRecord(table: row)));
        }
      },
      color: MaterialStateProperty.all(transparent),
      cells: [
        DataCell(Text(row.name)),
        DataCell(Text(row.age)),
        DataCell(Text(row.gender)),
        DataCell(Text(row.status)),
        DataCell(Text(row.doctor)),
        DataCell(Text(row.school)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _dataRows.length;

  @override
  int get selectedRowCount => 0;

  void resetData(List<TableEntity> originalData) {
    _dataRows = originalData;
  }
}
