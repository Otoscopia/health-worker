import 'package:fluent_ui/fluent_ui.dart';

import 'package:health_worker/features/features.dart';

const String tableColumnName = "Name";
const String tableColumnAge = "Age";
const String tableColumnGender = "Gender";
const String tableColumnStatus = "Status";
const String tableColumnDoctor = "Doctor";
const String tableColumnSchool = "School";

const String noRecord = "No Record found";
const String homeTooltip = 'Add New Patient';

const String homePageTitle = 'Home';

List<Tab> tabs = [
  Tab(
    text: const Text(homePageTitle),
    body: const HomeTable(),
    closeIcon: null,
    icon: const Icon(FluentIcons.home),
    semanticLabel: homePageTitle,
  ),
];
