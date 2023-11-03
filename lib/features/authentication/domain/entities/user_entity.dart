class UserEntity {
  // user id
  final String userId;

  // user name
  final String name;

  // user name
  final String email;

  // user name
  final String? key;

  // user phone number
  final String phone;

  // user account status
  final List<dynamic> label;

  UserEntity({
    required this.userId,
    required this.name,
    required this.email,
    this.key,
    required this.phone,
    required this.label,
  });
}
