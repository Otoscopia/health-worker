import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';
import 'package:styled_widget/styled_widget.dart';

String diagnosisTitle =  "Diagnosis Information Form";

const List<String> complains = [
    "Ear Pain",
    "Hearing Loss",
    "Tinnittus",
    "Ear Discharge",
    "Others"
  ];

const List<String> label = ["Yes", "No"];


Widget invalidComplain = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidAllergy = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidSurgery = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidMedication = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidCondition = const Text("Please select Yes or No").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);

const String dateOfExamination = "Date of Examination";
const String examinerLabel = "Examiner";

const String historyOfIllness = "History of Illness";
const String illnessError = "Please Enter a valid $historyOfIllness";
const String healthWorkerComment = "Health worker comment";
const String healthWorkerCommentError = "Please Enter a valid $healthWorkerComment";
const String frameOfInterest = "Frame of Interest";
const String frameOfInterestError = "Please Enter a valid $frameOfInterest";

const String weight = "Weight (kg)";
const String weightError = "Please enter a valid height in kg";
const String height = "Height(cm)";
const String heightError = "Please enter a valid height in cm";

const String temperature = "Temperature";
const String temperaturePlaceholder = "$temperature in °C";
const String temperatureError = "Please enter a valid temperature";
const String bloodPressure = "Blood Pressure";
const String bloodPressurePlaceholder = "$bloodPressure mmHg (120/90)";
const String bloodPressureErrorOne = "Please enter a valid blood pressure";
const String bloodPressureErrorTwo = "Please enter a valid blood pressure, must be below 120";
const String bloodPressureErrorThree = "Please enter a valid blood pressure, must be below 120";

Icon temperatureIcon = const Icon(Ionicons.thermometer);
Icon bloodPressureIcon = const Icon(Ionicons.git_network);

FilteringTextInputFormatter filterText = FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ,().]'));

const String cheifComplainLabel = "Cheif Complains";
const String patientSimilarConditionTitle = "Has the patient been treated for a similar condition or had any injuries to the same area in the past?";
const String patientAllergyTitle = "Does the patient have any allergies?";
const String patientSurgicalTitle = "Does the patient undergo any surgical procedure in the past?";
const String otherComplainLabel = "Other Complain";
const String otherComplainPlaceholder = "Write the complain of the patient";
const String otherComplainError = "Please write the complain of the patient";

const String medicationTypeLabel = "Type of Medication";
const String medicationTypePlaceholder = "Type of Medication and it's duration";
const String medicationTypeError = "Please write the type of medication that the patient is currently having";

const String vitalLabel = "Vitals";

List<Icon> icons = [const Icon(Ionicons.barbell), const Icon(Ionicons.body), const Icon(Ionicons.thermometer) ,const Icon(Ionicons.eyedrop_outline)];
List<String> vitals =  ["Weight", "Height", "Temperature", "Blood Pressure"];
List<Widget> amount = [const Text("$weight kg").bold()];


const String patientMedication = "Does the patient currently taking any medication?";