import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health_worker/dependency_injection.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';

class UserNotifier extends StateNotifier<UserModel> {
  UserNotifier(): super(UserModel(uid: "", name: "", email: "", label: ""));
  
  setUser(String uid, String name, String email, List<dynamic> label) async {
    UserModel user = UserModel(uid: uid, name: name, email: email, label: label.toString());
    state = user;

    teamList = await team.list();

    List<int> bytes = utf8.encode(teamList.teams.first.$id);
    Digest digest = sha256.convert(bytes);

    await storage.write(key: uid, value: digest.toString());

     isar.writeTxn(() async {
      await isar.userModels.put(user);
    });
  }

  fetchUserFromDb(UserModel user) {
    state = user;
  }
}

final userProvider = StateNotifierProvider<UserNotifier, UserModel>((ref) {
  return UserNotifier();
});