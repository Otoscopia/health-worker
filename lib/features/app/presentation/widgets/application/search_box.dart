import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/app.dart';

class SearchBox extends ConsumerWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<TableEntity> table = ref.watch(tableRecordsProvider);
    List<AutoSuggestBoxItem> items = table
        .map<AutoSuggestBoxItem<TableEntity>>(
          (record) => AutoSuggestBoxItem<TableEntity>(
            label: record.name,
            value: record,
            child: Text(record.name),
          ),
        )
        .toList();

    return SizedBox(
      width: 450,
      height: 32,
      child: AutoSuggestBox(
        placeholder: searchPatientText,
        items: items,
        onSelected: (value) => Navigator.push(
            context,
            FluentPageRoute(
                builder: (context) => PatientRecord(table: value.value))),
        leadingIcon: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(FluentIcons.search),
        ),
      ),
    );
  }
}