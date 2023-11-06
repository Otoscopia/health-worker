import 'package:flutter/material.dart' as m;

import 'package:data_table_2/data_table_2.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/presentation/providers/future_table_provider.dart';
import 'package:health_worker/features/features.dart';

class HomeTable extends ConsumerWidget {
  const HomeTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TableEntity> table = ref.watch(tableRecordsProvider);

    HomeTableSource source = HomeTableSource(table, ref, context);

    final Color color = FluentTheme.of(context).cardColor;

    final realtimeTable = realtime.subscribe([
      'databases.${Env.database}.collections.${Env.remarks}',
      'databases.${Env.database}.collections.${Env.screening}',
    ]);

    realtimeTable.stream.listen((event) {});

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
          renderEmptyRowsInTheEnd: false,
          headingRowColor:
              m.MaterialStateProperty.resolveWith((states) => transparent),
          minWidth: 1200,
          rowsPerPage: 20,
          sortArrowAnimationDuration: const Duration(milliseconds: 0),
          columns: const [
            DataColumn2(
              label: Text(tableColumnName),
              size: ColumnSize.M,
            ),
            DataColumn2(
              label: Text(tableColumnAge),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text(tableColumnGender),
              size: ColumnSize.S,
            ),
            DataColumn2(
              label: Text(tableColumnStatus),
              size: ColumnSize.S,
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