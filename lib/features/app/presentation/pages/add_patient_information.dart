import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/core/constants/constants.dart';
import 'package:health_worker/core/widgets/container_box.dart';
import 'package:health_worker/features/app/presentation/providers/patient_information_provider.dart';
import 'package:health_worker/features/app/presentation/widgets/add_patient_information.dart/add_patient_button.dart';
import 'package:health_worker/features/app/presentation/widgets/add_patient_information.dart/birthdate_widget.dart';
import 'package:health_worker/features/app/presentation/widgets/add_patient_information.dart/gender_widget.dart';
import 'package:health_worker/features/app/presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/contact_number_input.dart';
import 'package:health_worker/features/app/presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/full_name_input.dart';
import 'package:health_worker/features/app/presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/school_id_input.dart';
import 'package:health_worker/features/app/presentation/widgets/add_patient_information.dart/text_inputs_widgets.dart/school_name_input.dart';
import 'package:health_worker/features/app/presentation/widgets/title_widget.dart';

class AddPatientInformation extends ConsumerStatefulWidget {
  const AddPatientInformation({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddPatientInformationState();
}

class _AddPatientInformationState extends ConsumerState<AddPatientInformation> {
  final key = GlobalKey<FormState>();
  TextEditingController fullName = TextEditingController();
  TextEditingController contactNumber = TextEditingController();
  TextEditingController schoolName = TextEditingController();
  TextEditingController schoolID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String gender = ref.watch(patientProvider).gender;
    String birthdate = ref.watch(patientProvider).birthdate;
    DateTime birthday =
        birthdate.isEmpty ? DateTime.now() : DateTime.parse(birthdate);

    bool? birthdateError = ref.watch(patientProvider).birthdateError;
    bool? genderError = ref.watch(patientProvider).genderError;
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
                child: Center(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      constraints: const BoxConstraints(maxWidth: 316),
                      child: Form(
                        key: key,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            FullNameInput(fullName: fullName),
                            mediumHeight,
                            const GenderWidget(),
                            if (genderError == true)
                              SizedBox(
                                  width: double.infinity, child: invalidGender),
                            mediumHeight,
                            BirthdateWidget(birthdate: birthday),
                            if (birthdateError == true)
                              SizedBox(
                                  width: double.infinity,
                                  child: invalidBirthdate),
                            mediumHeight,
                            ContactNumberInput(contactNumber: contactNumber),
                            mediumHeight,
                            SchoolNameInput(schoolName: schoolName),
                            mediumHeight,
                            SchoolIdInput(schoolID: schoolID),
                            largeHeight,
                            AddPatientButton(
                              globalKey: key,
                              birthdateError: birthdateError,
                              genderError: genderError,
                              fullName: fullName,
                              gender: gender,
                              birthdate: birthdate,
                              contactNumber: contactNumber,
                              schoolName: schoolName,
                              schoolID: schoolID,
                            )
                          ],
                        ),
                      ),
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
