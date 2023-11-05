import 'package:fluent_ui/fluent_ui.dart';
import 'package:styled_widget/styled_widget.dart';

const String errorLabel = 'Ohh ohh!';
const String noFilesFound = "You cannot continue unless you take a picture or a video";

const String illnessError = "Please Enter a valid History of Illness";
const String healthWorkerCommentError = "Please Enter a valid Remarks";
const String frameOfInterestError = "Please Enter a valid Frame of Interest";
const String weightError = "Please enter a valid height in kg";
const String heightError = "Please enter a valid height in cm";
const String temperatureError = "Please enter a valid temperature";

Widget invalidComplain = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidAllergy = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidSurgery = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidMedication = const Text("Please check one or more in the checkbox").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);
Widget invalidCondition = const Text("Please select Yes or No").fontWeight(FontWeight.w100).textColor(Colors.red.lighter);

const String otherComplainError = "Please write the complain of the patient";
const String medicationTypeError = "Please write the type of medication that the patient is currently having";