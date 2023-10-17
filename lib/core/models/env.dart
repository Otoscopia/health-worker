import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'APPWRITE_END_POINT', obfuscate: true)
  static String appwriteEndPoint = _Env.appwriteEndPoint;
  @EnviedField(varName: 'APPWRITE_PROJECT_ID', obfuscate: true)
  static String appwriteProjectID = _Env.appwriteProjectID;
}