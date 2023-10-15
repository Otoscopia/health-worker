import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';
import 'package:uuid/uuid.dart';

class UserNotifier extends StateNotifier<UserModel> {
  UserNotifier(): super(UserModel(uid: "", name: "", email: "", phone: ""));
  
  setUser(String name, String email, String phone) async {
    Uuid uuid = const Uuid();
    var uid = uuid.v4().toString();

    UserModel user = UserModel(uid: uid, name: name, email: email, phone: phone);
    state = user;

    await isar.writeTxn(() async {
      await isar.userModels.put(user);
    });
  }
}

final userProvider = StateNotifierProvider<UserNotifier, UserModel>((ref) {
  return UserNotifier();
});