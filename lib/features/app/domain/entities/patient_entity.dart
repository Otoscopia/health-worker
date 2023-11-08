class PatientEntity {
  // patient id
  final String id;

  // patient name
  final String name;

  // patient gender
  final String gender;

  // patient birthdate
  final String birthdate;

  // patient school id (foreign key)
  final String school;

  // patient school
  final String schoolID;

  // patient guardian's name
  final String guardiansName;

  // patient guardian's phone
  final String guardiansPhone;

  // patient creator id (foreign key)
  final String creator;

  // patient doctor id (foreign key)
  final String doctor;

  // patient created date
  final String createdAt;

  PatientEntity({
    required this.id,
    required this.name,
    required this.gender,
    required this.birthdate,
    required this.school,
    required this.schoolID,
    required this.guardiansName,
    required this.guardiansPhone,
    required this.creator,
    required this.doctor,
    required this.createdAt,
  });
}
