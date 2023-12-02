import 'package:fluent_ui/fluent_ui.dart';
import 'package:ionicons/ionicons.dart';

import 'package:health_worker/config/config.dart';

const String logoSvg = 'assets/logo.svg';
const String otoscopia = 'assets/otoscopia-text.svg';

const String applicationTitle = "Otoscopia Application";

const String offlineText = "You are offline";

const String proceedLabel = "Proceed";
const String cancelLabel = "Cancel";

const String continueLabel = "Continue";

const Icon closeButtonIcon = Icon(Ionicons.close_outline);

List<Icon> icons = [
  const Icon(
    Ionicons.barbell,
    color: primary,
  ),
  const Icon(
    Ionicons.body,
    color: primary,
  ),
  const Icon(
    Ionicons.thermometer,
    color: primary,
  )
];
