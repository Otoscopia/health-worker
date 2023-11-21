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
    List<TableEntity> table = ref.watch(tableRecordsProvider);

    HomeTableSource source = HomeTableSource(table, ref, context);

    final Color color = FluentTheme.of(context).cardColor;

    final screeningCollection =
        'databases.${Env.database}.collections.${Env.screening}.documents';

    final realtimeTable = realtime.subscribe([screeningCollection]);

    realtimeTable.stream.listen((event) {
      if (event.channels.contains(screeningCollection)) {
        addTableRecord(ref, event.payload, table);
      }
    });

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

void addTableRecord(
  WidgetRef ref,
  Map<String, dynamic> payload,
  List<TableEntity> table,
) {
  final List<ScreeningEntity> screenings = ref.read(screeningsProvider);

  ScreeningEntity screening = ScreeningEntity.fromPayload(payload);

  // Find the index of the element with the same id
  int index = screenings.indexWhere((element) => element.id == screening.id);

  // Update the values if the element with the same id is found
  if (index != -1) {
    // Update the screenings provider
    ref.read(screeningsProvider.notifier).modifyScreening(screening, index);
  }

  final int indexed =
      table.indexWhere((element) => element.patientId == screening.patient);

  final TableEntity modifiedTable =
      TableEntity.toTable(table[indexed], screening.status);

  if (indexed != -1) {
    ref
        .read(tableRecordsProvider.notifier)
        .modiftyTable(modifiedTable, indexed);
  }
}
