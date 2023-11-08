import 'package:envied/envied.dart';

part 'env_model.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: "PROJECT_ID", obfuscate: true)
  static String projectID = _Env.projectID;

  @EnviedField(varName: "PROJECT_ENDPOINT", obfuscate: true)
  static String projectEndPoint = _Env.projectEndPoint;

  @EnviedField(varName: "SCREENING_BUCKET", obfuscate: true)
  static String screeningBucket = _Env.screeningBucket;

  @EnviedField(varName: "AVATAR_BUCKET", obfuscate: true)
  static String avatarBucket = _Env.avatarBucket;

  @EnviedField(varName: "DATABASE", obfuscate: true)
  static String database = _Env.database;

  @EnviedField(varName: "REMARKS_COLLECTION", obfuscate: true)
  static String remarks = _Env.remarks;

  @EnviedField(varName: "ASSIGNMENT_COLLECTION", obfuscate: true)
  static String assignment = _Env.assignment;

  @EnviedField(varName: "PATIENTS_COLLECTION", obfuscate: true)
  static String patients = _Env.patients;

  @EnviedField(varName: "USERS_COLLECTION", obfuscate: true)
  static String users = _Env.users;

  @EnviedField(varName: "SCHOOLS_COLLECTION", obfuscate: true)
  static String schools = _Env.schools;

  @EnviedField(varName: "SCREENING_COLLECTION", obfuscate: true)
  static String screening = _Env.screening;

  @EnviedField(varName: "SENTRY_LOGGING", obfuscate: true)
  static String sentry = _Env.sentry;
}
