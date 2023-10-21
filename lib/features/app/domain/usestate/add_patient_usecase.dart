import 'dart:io';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:health_worker/dependency_injection.dart';

import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:health_worker/features/app/exports.dart';
import 'package:health_worker/core/exports.dart';

addPatient(BuildContext context, WidgetRef ref, GlobalKey<FormState> globalKey) {
  String fullname = ref.read(fullnameProvider);
  int gender = ref.read(genderProvider);
  DateTime birthdate = ref.read(birthdateProvider);
  String contactNumber = ref.read(contactNumberProvider);
  String schoolName = ref.read(schoolNameProvider);
  String schoolId = ref.read(schoolIdProvider);

  if (globalKey.currentState!.validate() && gender != 3 && !isBirthdateToday(birthdate)) {
    ref.read(patientProvider.notifier).addNewPatient(fullname, gender, birthdate, contactNumber, schoolName, schoolId);
    Navigator.push(context, FluentPageRoute(builder: (context) => const LeftCamera()));

    if (ref.read(applicationStateProvider).connected)downloadImage(ref);
  } else {
    if (globalKey.currentState!.validate()) {}
    if (gender == 3) ref.read(genderErrorProvider.notifier).setGenderError(true);
    if (isBirthdateToday(birthdate)) ref.read(birthdateErrorProvider.notifier).setBirthdateError(true);
  }
}

bool isBirthdateToday(DateTime birthdate) {
  DateTime today = DateTime.now();
  return birthdate.day == today.day &&
      birthdate.month == today.month &&
      birthdate.year == today.year;
}

downloadImage(WidgetRef ref) async {
  String uid = ref.read(patientProvider).uid;
  String url = "https://robohash.org/$uid?set=set4";
  

  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    final String filePath = "$applicationPath\\$uid";
    final Directory fileDirectory = await Directory(filePath).create(recursive: true);
    final file = File("${fileDirectory.path}\\$uid.jpeg");
    file.writeAsBytes(response.bodyBytes);
  } else {
    throw Exception('Failed to download image');
  }
}