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

    final realtimeTable = realtime.subscribe([
      // 'databases.${Env.database}.collections.${Env.remarks}.documents',
      screeningCollection,
    ]);

    realtimeTable.stream.listen((event) {
      print(event.channels.contains(screeningCollection));

      if (event.channels.contains(screeningCollection)) {
        final List<ScreeningEntity> screenings = ref.read(screeningsProvider);

        ScreeningEntity screening = ScreeningEntity(
          id: event.payload["\$id"],
          patient: event.payload["patient"]["\$id"],
          assignment: event.payload["assignment"]["\$id"],
          historyOfIllness: event.payload["historyOfIllness"],
          healthWorkerRemarks: event.payload["healthWorkerRemarks"],
          temperature: event.payload["temperature"],
          height: event.payload["height"],
          weight: event.payload["weight"],
          hasSimilarCondition: event.payload["hasSimilarCondition"],
          chiefComplaint: event.payload["chiefComplaint"],
          chiefComplaintMessage: event.payload["chiefComplaintMessage"],
          hasAllergies: event.payload["hasAllergies"],
          typeOfAllergies: event.payload["typeOfAllergies"],
          undergoSurgery: event.payload["undergoSurgery"],
          takingMedication: event.payload["takingMedication"],
          takingMedicationMessage: event.payload["takingMedicationMessage"],
          status: event.payload["status"],
          images: event.payload["images"],
          createdAt: event.payload["\$createdAt"],
        );

        // Find the index of the element with the same id
        int index =
            screenings.indexWhere((element) => element.id == screening.id);

        // Update the values if the element with the same id is found
        if (index != -1) {
          screenings[index] = screening;
        }

        // Update the screenings provider
        ref.read(screeningsProvider.notifier).setScreenings(screenings);

        final int indexed = table
            .indexWhere((element) => element.patientId == screening.patient);

        final TableEntity modifiedTable = TableEntity(
          patientId: table[indexed].patientId,
          name: table[indexed].name,
          age: table[indexed].age,
          gender: table[indexed].gender,
          status: screening.status,
          doctor: table[indexed].doctor,
          school: table[indexed].school,
        );

        if (indexed != -1) {
          table[indexed] = modifiedTable;
        }
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
