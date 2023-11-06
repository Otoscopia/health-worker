import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/config.dart';
import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/app.dart';

class PatientInformationWidget extends ConsumerWidget {
  const PatientInformationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PatientEntity patient = ref.read(patientProvider);
    final DateTime birthdate = DateTime.parse(patient.birthdate);
    final DateTime date = DateTime.now();
    final int age = birthdate.year - date.year;

    final String school = ref.read(schoolsProvider).where((element) => element.id == patient.school).first.name;

    return Card(
      // borderColor: transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(minWidth: 150, maxWidth: 400),
            child: ListTile(
              title: Text(patient.name).bold(),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRichText(
                      title: birthdayTitle,
                      value: DateFormat("MMM. dd, y").format(birthdate)),
                  CustomRichText(title: ageTitle, value: age.toString()),
                  CustomRichText(title: genderTitle, value: patient.gender),
                  CustomRichText(title: schoolTitle, value: school),
                  CustomRichText(title: guardianTitle, value: patient.guardiansPhone),
                  CustomRichText(title: contactNumberTitle, value: patient.guardiansPhone),
                  mediumHeight,
                  const Text(initialDiagnosis).bold().textColor(Colors.white).padding(vertical: 8, horizontal: 16).backgroundColor(primary).clipRRect(all: 4),
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumHeight,
              const Text(vitalLabel).fontSize(16).bold(),
              const VitalContainerWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
