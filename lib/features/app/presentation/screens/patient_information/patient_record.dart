import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_records/medical_record_card.dart';
import 'package:health_worker/features/app/presentation/widgets/patient_records/patient_information.dart';
import 'package:health_worker/features/features.dart';

class PatientRecord extends ConsumerWidget {
  final TableEntity table;
  const PatientRecord({super.key, required this.table});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get patient
    final PatientEntity patient =
        ref.read(patientProvider.notifier).findPatient(table.patientId);

    // Get screenings
    final List<ScreeningEntity> screening =
        ref.read(screeningProvider.notifier).list(patient.id);

    // Get school
    final SchoolEntity school =
        ref.read(schoolsProvider.notifier).findSchool(patient.school);

    return ApplicationContainer(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: HorizontalScroll(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const TitleWidget(
                icon: closeButtonIcon,
                title: "Review Medical Record",
                popUpContent: false,
              ),
              mediumHeight,
              const Divider(),
              mediumHeight,
              PatientSummary(patient: patient, school: school.name),
              mediumHeight,
              const TextSubtitle("List of Medical Records"),
              mediumHeight,
              Column(
                children: screening
                    .map((record) => ScreeningRecord(screening: record))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}