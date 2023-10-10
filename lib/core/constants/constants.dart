import 'package:fluent_ui/fluent_ui.dart';
import 'package:ionicons/ionicons.dart';

const String applicationTitle = "Otoscopia - Health Worker";
const String applicationLogo = "assets/logo.svg";
const String applicationTitleBarLogo = "assets/icon.svg";

// application minimum width and height
const applicationMinimumSize = Size(1200, 700);
const center = Alignment.center;

const String welcomeLabel = "Welcome Back School Nurse!";
const String passwordLabel = "Password";
const String emailLabel = "Email Address";

// Spacer
const smallWidth = SizedBox(width: 4);
const mediumWidth = SizedBox(width: 8);
const largeWidth = SizedBox(width: 16);

const smallHeight = SizedBox(height: 4);
const mediumHeight = SizedBox(height: 8);
const largeHeight = SizedBox(height: 16);

const smallPadding = EdgeInsets.all(4);
const mediumPadding = EdgeInsets.all(8);
const largePadding = EdgeInsets.all(16);

const errorSeverity = InfoBarSeverity.error;
const successSeverity = InfoBarSeverity.success;
const warningSeverity = InfoBarSeverity.warning;

const String errorLabel = "Ohh oh!";
const String errorMessage = "Something went wrong, please try again later";
const String invalidCredentials = "Inavlid credentials, please check your email and or password";

// Dashboard
const Icon floatingPlus = Icon(Ionicons.add_outline);
const Icon searchIcon = Icon(Ionicons.search_outline);
const Icon notificationIconButton = Icon(Ionicons.notifications_outline);

const Icon settingsIconButton = Icon(Ionicons.cog_outline);
const Icon pendingIcon = Icon(Ionicons.time_outline, color: Colors.white);
const Icon medicalIcon = Icon(Ionicons.warning, color: Colors.white);

const Icon finalIcon = Icon(Ionicons.checkmark_circle_outline, color: Colors.white);
const Icon initialIcon = Icon(Ionicons.medical_outline, color: Colors.white);

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

const String gender = "Gender";
const String medicalRecordStatus = "Medical Record Status";
const String uploadedDate = "Uploaded Date";

const Border borderNone = Border.fromBorderSide(BorderSide.none);