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

  UserEntity({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    required this.workAddress,
  });
}
