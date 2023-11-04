import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';

class SearchBox extends ConsumerWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    return const SizedBox(
      width: 450,
      child: AutoSuggestBox(
        placeholder: searchPatientText,
        items: [],
        // TODO: [OT-32] Implement search
        // onSelected: (value) => ref.read(tabProvider.notifier).newTab(value.value!),
        leadingIcon: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(FluentIcons.search),
        ),
      ),
    );
  }
}