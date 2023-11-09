import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/core.dart';
import 'package:health_worker/features/features.dart';

class AddPatient extends ConsumerWidget {
  const AddPatient({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final key = GlobalKey<FormState>();
    bool genderError = ref.watch(genderErrorProvider);
    bool birthdayError = ref.watch(birthdateErrorProvider);

    return ApplicationContainer(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          child: HorizontalScroll(
            child: Form(
              key: key,
              child: Column(
                children: [
                  const TitleWidget(
                    icon: closeButtonIcon,
                    title: addPatientLabel,
                    popUpContent: true,
                    popUpContentTitle: addPatientCancelTitle,
                    popUpContentMessage: addPatientCancelContent,
                  ),
                  mediumHeight,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ProgressButtons(status: 1),
                      largeHeight,
                      Container(
                        constraints: const BoxConstraints(maxWidth: 295),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const FullNameInput(),
                            mediumHeight,
                            const GenderWidget(),
                            if (genderError) const GenderError(),
                            mediumHeight,
                            const BirthdateWidget(),
                            if (birthdayError) const BirthdayError(),
                            mediumHeight,
                            const GuardiansFullNameInput(),
                            mediumHeight,
                            const ContactNumberInput(),
                            mediumHeight,
                            const SchoolNameInput(),
                            mediumHeight,
                            const SchoolIdInput(),
                            largeHeight,
                            AddPatientButton(globalKey: key)
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
