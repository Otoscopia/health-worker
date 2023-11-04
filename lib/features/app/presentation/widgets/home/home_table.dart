import 'package:flutter/material.dart' as m;

import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class HomeTable extends ConsumerWidget {
  const HomeTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<TableEntity> doctors = [];
    HomeTableSource source = HomeTableSource(doctors, ref);

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
              label: Text(tableColumnStatus),
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
          empty: const Center(
            child: TextSubtitle(noRecord),
          ),
        ),
      ),
    );
  }
}
