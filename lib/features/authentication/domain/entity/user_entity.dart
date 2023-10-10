class UserEntity {
  String? uid;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? registration;
  String? passwordUpdate;
  String? email;
  String? phone;
  String? accessedAt;
  String? prefs;
  String? labels;
  bool? status;
  bool? emailVerification;
  bool? phoneVerification;

  UserEntity({
    this.uid,
    this.createdAt,
    this.updatedAt,
    this.name,
    this.registration,
    this.passwordUpdate,
    this.email,
    this.phone,
    this.accessedAt,
    this.prefs,
    this.status,
    this.labels,
    this.emailVerification,
    this.phoneVerification,
  });
}
