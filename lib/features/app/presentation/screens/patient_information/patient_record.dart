import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
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
        ref.read(screeningProvider.notifier).getScreeningRecords(patient.id);

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
                children: screening.map(
                  (record) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            FluentPageRoute(
                              builder: (context) =>
                                  ScreeningInformation(screening: record),
                            ),
                          ),
                          child: ScreeningRecord(screening: record),
                        ),
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
