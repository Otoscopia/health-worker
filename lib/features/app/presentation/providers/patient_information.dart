import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:health_worker/core/constants/spacing_constants.dart';

class PatientInformationTab extends ConsumerWidget {
  const PatientInformationTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isMobile = ResponsiveBreakpoints.of(context).screenWidth < 900;

    return Card(
      child: Stack(
        children: [
          ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView(
              children: const [
                // const PatientCard(),
                // largeHeight,
                // if (isMobile) const VitalsContainer(values: ["0", "0", "0"]),
                // largeHeight,
                // const HealthRecord(),
                // largeHeight,
                // const Diagnosis(),
                // largeHeight,
                // const ScreeningImages()
              ],
            ),
          ),
          // const FloatingActionButton()
        ],
      ),
    );
  }
}
