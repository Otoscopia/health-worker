import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/exports.dart';
import 'package:health_worker/features/app/exports.dart';

class AddPatientInformation extends ConsumerWidget {
  const AddPatientInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final key = GlobalKey<FormState>();
    bool genderError = ref.watch(genderErrorProvider);
    bool birthdayError = ref.watch(birthdateErrorProvider);

    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: ContainerBox(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const TitleWidget(
                icon: closeButtonIcon,
                title: addPatientLabel,
                popUpContent: true,
                popUpContentTitle: addPatientCancelTitle,
                popUpContentMessage: addPatientCancelContent,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Card(
                          backgroundColor: Colors.blue,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            constraints: const BoxConstraints(maxWidth: 316),
                            child: BreadcrumbBar(
                              items: items,
                              onItemPressed: (value) {},
                            ),
                          ),
                        ),
                        mediumHeight,
                        Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            constraints: const BoxConstraints(maxWidth: 316),
                            child: Form(
                              key: key,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const FullNameInput(),
                                  mediumHeight,
                                  const GenderWidget(),
                                  if(genderError) const GenderError(),
                                  mediumHeight,
                                  const BirthdateWidget(),
                                  if(birthdayError) const BirthdayError(),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
