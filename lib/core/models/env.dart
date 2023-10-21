import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'APPWRITE_END_POINT', obfuscate: true)
  static String appwriteEndPoint = _Env.appwriteEndPoint;
  @EnviedField(varName: 'APPWRITE_PROJECT_ID', obfuscate: true)
  static String appwriteProjectID = _Env.appwriteProjectID;
  @EnviedField(varName: 'APPWRITE_DATABASE_ID', obfuscate: true)
  static String appwriteDatabaseID = _Env.appwriteDatabaseID;
  @EnviedField(varName: 'APPWRITE_PATIENT_COLLECTION', obfuscate: true)
  static String appwritePatientCollection = _Env.appwritePatientCollection;
  @EnviedField(varName: 'APPWRITE_DOCTOR_COLLECTION', obfuscate: true)
  static String appwriteDoctorCollection = _Env.appwriteDoctorCollection;
  @EnviedField(varName: 'APPWRITE_SCHOOLS_COLLECTION', obfuscate: true)
  static String appwriteSchoolsCollection = _Env.appwriteSchoolsCollection;
  @EnviedField(varName: 'APPWRITE_FOLLOW_UPS_COLLECTION', obfuscate: true)
  static String appwriteFollowUpsCollection = _Env.appwriteFollowUpsCollection;
  @EnviedField(varName: 'APPWRITE_SCREENING_COLLECTION', obfuscate: true)
  static String appwriteScreeningCollection = _Env.appwriteScreeningCollection;
  @EnviedField(varName: 'APPWRITE_SCREENING_STORAGE', obfuscate: true)
  static String appwriteScreeningStorage = _Env.appwriteScreeningStorage;
  @EnviedField(varName: 'APPWRITE_AVATAR_STORAGE', obfuscate: true)
  static String appwriteAvatarStorage = _Env.appwriteAvatarStorage;
}