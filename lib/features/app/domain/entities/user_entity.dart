import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

class UserEntity {
  // user id
  final String id;

  // user name
  final String name;

  // user email
  final String email;

  // user phone number
  final String phone;

  // user role
  final String role;

  // user work address
  final String workAddress;

  // user constructor with required parameters
  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.workAddress,
  });

  // user factory constructor from document
  factory UserEntity.fromDocument(Document document) {
    return UserEntity(
      id: document.$id,
      name: document.data['name'],
      email: document.data['email'],
      phone: document.data['phone'],
      role: document.data['role'],
      workAddress: document.data['workAddress'],
    );
  }

  // user factory constructor from model
  factory UserEntity.fromDoctor(DoctorModel doctor) {
    return UserEntity(
      id: doctor.id,
      name: doctor.name,
      email: doctor.email,
      phone: doctor.phone,
      role: doctor.role,
      workAddress: doctor.workAddress,
    );
  }
}
