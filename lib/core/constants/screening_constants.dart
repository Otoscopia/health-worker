import 'package:flutter/services.dart';

import 'package:fluent_ui/fluent_ui.dart';
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

const String dateOfExamination = "Date of Examination";
const String examinerLabel = "Examiner";

const String historyOfIllness = "History of Illness";

const String healthWorkerComment = "Health Worker Remarks";

const String frameOfInterest = "Frame of Interest";

const String weight = "Weight (kg)";

const String height = "Height(cm)";

const String temperature = "Temperature";
const String temperaturePlaceholder = "$temperature in °C";

FilteringTextInputFormatter filterText = FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ,().]'));

const String cheifComplainLabel = "Cheif Complains";
const String patientSimilarConditionTitle = "Has the patient been treated for a similar condition or had any injuries to the same area in the past?";
const String patientAllergyTitle = "Does the patient have any allergies?";
const String patientSurgicalTitle = "Does the patient undergo any surgical procedure in the past?";
const String otherComplainLabel = "Other Complain";
const String otherComplainPlaceholder = "Write the complain of the patient";

const String medicationTypeLabel = "Type of Medication";
const String medicationTypePlaceholder = "Type of Medication and it's duration";

const String vitalLabel = "Vitals";

List<String> vitals =  ["Weight", "Height", "Temperature"];
List<Widget> amount = [const Text("$weight kg").bold()];

const String patientMedication = "Does the patient currently taking any medication?";