import 'package:fluent_ui/fluent_ui.dart';
import 'package:styled_widget/styled_widget.dart';

const String addPatientLabel = "Add Patient";
const String addPatientCancelTitle = "Cancel Adding new Patient?";
const String addPatientCancelContent = "If you click proceed, your data will be lost";

const String fullNameLabel = "Patient Full Name";
const String genderTitle = "Patient Gender";
const String birthdayLabel = "Patient Birthdate";

const String contactNumberLabel = "Patient Contact Number";
const String schoolNameLabel = "Patient School Name";
const String schoolIDLabel = "Patient School ID";

const String maleLabel = "Male";
const String femaleLabel = "Female";

Text invalidGender = const Text("Please input a valid gender").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Text invalidBirthdate = const Text("Please select a valid birthdate").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);

List<String> genders = [maleLabel, femaleLabel];
final key = GlobalKey<FormState>();

const items = <BreadcrumbItem<int>>[
  BreadcrumbItem(label: Text(addPatientLabel), value: 0),
  BreadcrumbItem(label: Text('Patient Information'), value: 1),
];

const String schoolNamePlaceholder = "Iligan City Division Office";
const String schoolNameError = "Please input a valid school name";

const String schoolIDPlaceholder = "School ID";
const String schoolIDError = "Please input a valid school id";

const String fullNamePlaceholder = "Full Name";
const String fullNameError = "Please input a valid name";

const String contactNumberPlaceholder = "09XXXXXXXXX";
const String contactNumberErrorOne = "Please input a valid contact number";
const String contactNumberErrorTwo = "Contact number must start with 09";