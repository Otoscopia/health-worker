import 'package:appwrite/models.dart';

import 'package:health_worker/features/app/app.dart';

/// Represents a user entity that includes information about an application user,
/// such as their name, email, phone number, role, and work address.
///
/// This class is used to model user-related data within the application.
///
/// Example usage:
/// ```dart
/// //* Create an instance of UserEntity.
/// final user = UserEntity(
///   id: 'user_id',
///   name: 'John Doe',
///   email: 'john.doe@example.com',
///   phone: '123-456-7890',
///   role: 'doctor',
///   workAddress: '123 Main Street',
/// );
///
/// //* Create an instance of UserEntity from a Document.
/// final userFromDocument = UserEntity.fromDocument(document);
///
/// //* Create an instance of UserEntity from a DoctorModel.
/// final userFromDoctor = UserEntity.fromDoctor(doctorModel);
/// ```
class UserEntity {
  /// The unique identifier for the user.
  final String id;

  /// The name of the user.
  final String name;

  /// The email address of the user.
  final String email;

  /// The phone number of the user.
  final String phone;

  /// The role or designation of the user (e.g., doctor, nurse).
  final String role;

  /// The work address of the user.
  final String workAddress;

  /// Constructor for the UserEntity class.
  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.workAddress,
  });

  /// Factory method to create an instance of UserEntity from a Document.
  ///
  /// This method extracts data from the provided Document and constructs a
  /// UserEntity instance.
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

  /// Factory method to create an instance of UserEntity from a DoctorModel.
  ///
  /// This method constructs a UserEntity instance using data from the
  /// provided DoctorModel.
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
