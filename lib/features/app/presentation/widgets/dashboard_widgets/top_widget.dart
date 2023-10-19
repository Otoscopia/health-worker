import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_patient_provider.dart';

class TopWidget extends ConsumerWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var patients = ref.watch(patientListProvider);
    var items = patients.map((patient) => AutoSuggestBoxItem<String>(value: patient.toString(), label: patient.fullName)).toList();
    
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const LogoContainer(),
          largeWidth,
          Expanded(child: SearchBox(label: searchLabel, items: items)),
          mediumWidth,
          const NotificationIcon(
            items: [],
          ),
          mediumWidth,
          const SettingsIcon(),
          mediumWidth,
          const UserButton(),
        ],
      ),
    );
  }
}
