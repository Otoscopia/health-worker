import 'package:fluent_ui/fluent_ui.dart';
import 'package:ionicons/ionicons.dart';

const String applicationTitle = "Otoscopia - Health Worker";
const String applicationLogo = "assets/logo.svg";
const String applicationTitleBarLogo = "assets/icon.svg";

// application minimum width and height
const applicationMinimumSize = Size(1200, 700);
const center = Alignment.center;

const String currentSession = "current";
const String offlineErrorMessage = "not connected";

// Error Constants
const String errorLabel = "Ohh oh!";
const errorSeverity = InfoBarSeverity.error;
const successSeverity = InfoBarSeverity.success;
const warningSeverity = InfoBarSeverity.warning;

// Dashboard
const Icon floatingPlus = Icon(Ionicons.add_outline);
const Icon searchIcon = Icon(Ionicons.search_outline);
const Icon notificationIconButton = Icon(Ionicons.notifications_outline);

const Icon settingsIconButton = Icon(Ionicons.cog_outline);
const Icon pendingIcon = Icon(Ionicons.time_outline, color: Colors.white);
const Icon medicalIcon = Icon(Ionicons.warning, color: Colors.white);

const Icon finalIcon = Icon(Ionicons.checkmark_circle_outline, color: Colors.white);
const Icon initialIcon = Icon(Ionicons.medical_outline, color: Colors.white);

const Icon closeButtonIcon = Icon(Ionicons.close_outline);

const String searchLabel = "Search Patients";
const String settingsLabel = "Settings";
const String signOutPopUpTitle = "Do you wish to log out?";

const String signOutPopUpMessage = "If you wish to logged out, you cannot access the application without signing back in";
const String signOutText = "Sign Out?";
const String signOutButton = "Sign Out";

const String cancelButton = "Cancel";
const String pending = "Pending Diagnosis";
const String finalFilter = "Final Diagnosis";

const String initial = "Initial Diagnosis";
const String medical = "Medical Attention";
const String patientName = "Patient Name";

const String genderLabel = "Gender";
const String medicalRecordStatus = "Medical Record Status";
const String uploadedDate = "Uploaded Date";

const String proceedLabel = "Proceed";
const String continueLabel = "Continue";

const Border borderNone = Border.fromBorderSide(BorderSide.none);
