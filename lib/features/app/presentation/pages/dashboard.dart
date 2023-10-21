import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/domain/provider/refresh_table_provider.dart';
import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_patient_provider.dart';
import 'package:health_worker/features/app/presentation/providers/fetch_screening_records_provider.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool refresh = ref.watch(refreshProvider);
    return FutureBuilder(
      future: fetchData(ref, refresh),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingAnimation();
        } else if (snapshot.hasError) {
          return Text("Error: ${snapshot.error}");
        } else {
          List<PatientModel> patientList = snapshot.data![0] as List<PatientModel>;
          List<ScreeningModel> screeningList = snapshot.data![1] as List<ScreeningModel>;
          return ScaffoldPage(
            padding: EdgeInsets.zero,
            content: ContainerBox(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        TopWidget(patients: patientList),
                        smallHeight,
                        const Divider(),
                        const ContentWidget(),
                        FilterWidget(status: screeningList),
                        Expanded(child: TableWidget(patientList: patientList, screeningList: screeningList)),
                      ]
                    ),
                    const FloatingActionButton(
                      icon: floatingPlus,
                      route: AddPatientInformation(),
                      color: true,
                      bottom: 16,
                      right: 16,
                    )
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

Future<List> fetchData(WidgetRef ref, bool refresh) async {
    return await Future.wait([
      ref.watch(fetchPatientsProvider.future),
      ref.watch(screeningListProvider.future)
    ]);
  }