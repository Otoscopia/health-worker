import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:styled_widget/styled_widget.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class PatientSummary extends ConsumerWidget {
  final PatientEntity patient;
  final String school;
  const PatientSummary({super.key, required this.patient, required this.school});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime birthdate = DateTime.parse(patient.birthdate);
    final DateTime date = DateTime.now();
    final int age = birthdate.year - date.year;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(patient.name).bold(),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: double.infinity),
              CustomRichText(
                  title: birthdayTitle,
                  value: DateFormat("MMM. dd, y").format(birthdate)),
              CustomRichText(title: ageTitle, value: age.toString()),
              CustomRichText(title: genderTitle, value: patient.gender),
              CustomRichText(title: schoolTitle, value: school),
              CustomRichText(
                  title: guardianTitle, value: patient.guardiansPhone),
              CustomRichText(
                  title: contactNumberTitle, value: patient.guardiansPhone),
              mediumHeight,
            ],
          ),
        ),
      ),
    );
  }
}
