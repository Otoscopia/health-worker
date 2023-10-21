import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:intl/intl.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/config/exports.dart';
import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class PatientInformationWidget extends ConsumerWidget {
  const PatientInformationWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final patientUID = ref.read(patientProvider).uid;
    final image = "https://robohash.org/$patientUID?set=set4";
    final patient = ref.read(patientProvider).fullName;
    final gender = ref.read(patientProvider).gender;
    final birthday = DateTime.parse(ref.read(patientProvider).birthdate);
    final now = DateTime.now();
    final age = now.year -
        birthday.year -
        ((now.month > birthday.month ||
                (now.month == birthday.month && now.day >= birthday.day))
            ? 0
            : 1);
    final contactNumber = ref.read(patientProvider).contactNumber;
    final schoolName = ref.read(patientProvider).schoolName;

    return Card(
      borderColor: transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(mainAxisSize: MainAxisSize.min, children: [
            GFAvatar(size: 64, backgroundImage: NetworkImage(image)),
            const SizedBox(height: 16),
            const Text(initialDiagnosis).bold().textColor(Colors.teal)
          ]),
          Container(
            constraints: const BoxConstraints(minWidth: 150, maxWidth: 400),
            child: ListTile(
              title: Text(patient).bold(),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomRichText(
                      title: birthdayTitle,
                      value: DateFormat("MMM. dd, y").format(birthday)),
                  CustomRichText(title: ageTitle, value: age.toString()),
                  CustomRichText(title: genderTitle, value: gender),
                  CustomRichText(title: schoolTitle, value: schoolName),
                  CustomRichText(
                      title: contactNumberTitle, value: contactNumber),
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
          )
        ],
      ),
    );
  }
}