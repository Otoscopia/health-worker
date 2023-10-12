class PatientEntity {
  String uid, fullName, gender, birthdate, schoolName, schoolID;
  bool? genderError, birthdateError;

  PatientEntity(
      {required this.uid,
      required this.fullName,
      required this.gender,
      required this.birthdate,
      required this.schoolName,
      required this.schoolID,
      this.genderError,
      this.birthdateError});
}
