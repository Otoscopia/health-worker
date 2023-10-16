import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import 'package:health_worker/features/app/exports.dart';

class PatientNotifier extends StateNotifier<PatientEntity> {
  PatientNotifier()
      : super(PatientEntity(
            uid: "",
            fullName: "",
            gender: "",
            birthdate: "",
            contactNumber: "",
            schoolName: "",
            schoolID: ""));

  addNewPatient(String fullname, int gender, DateTime birthdate, String contactNumber, String schoolName, String schoolId) async {
    String genderString = gender == 0 ? "Male" : "Female";
    Uuid uuid = const Uuid();
    String uid = uuid.v4().toString(); 

    state = PatientEntity(uid: uid, fullName: fullname, gender: genderString, birthdate: birthdate.toString(), contactNumber: contactNumber, schoolName: schoolName, schoolID: schoolId);
  }
}

final patientProvider =
    StateNotifierProvider<PatientNotifier, PatientEntity>((ref) {
  return PatientNotifier();
});