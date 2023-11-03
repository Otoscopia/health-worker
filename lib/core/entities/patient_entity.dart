class PatientEntity {
  final String id;
  final String name;
  final String gender;
  final String birthdate;
  final String school;
  final String schoolID;
  final String guardiansName;
  final String guardiansPhone;
  final String creator;
  final String doctor;

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
  });
}
