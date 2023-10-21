import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class PatientCard extends ConsumerWidget {
  final PatientModel patient;
  const PatientCard({super.key, required this.patient});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final now = DateTime.now();
    final birthday = DateTime.parse(patient.birthdate);
    final age = now.year -
        birthday.year -
        ((now.month > birthday.month ||
                (now.month == birthday.month && now.day >= birthday.day))
            ? 0
            : 1);

    return Expanded(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/OIP.OZ7OdxqGsEUgIhdvzx3n6gHaKe?pid=ImgDet&rs=1"),
                            fit: BoxFit.cover)),
                    width: 150,
                    height: 250,
                  ),
                ),
                mediumHeight,
                const Divider(),
                ListTile(
                  title: Text(patient.fullName).bold(),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomRichText(title: ageTitle, value: age.toString()),
                      CustomRichText(title: genderLabel, value: patient.gender),
                      CustomRichText(
                          title: birthdayTitle,
                          value: DateFormat.yMMMEd().format(birthday)),
                      CustomRichText(
                          title: contactNumberTitle,
                          value: patient.contactNumber),
                      CustomRichText(
                          title: "School ID", value: patient.schoolID),
                      CustomRichText(
                          title: schoolTitle, value: patient.schoolName),
                      const CustomRichText(title: "Medical Record", value: "0"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
