import 'dart:async';

import 'package:floor/floor.dart';
// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:health_worker/core/models/DAO/user_dao.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';

part 'application_database.g.dart';

@Database(version: 1, entities: [UserModel])
abstract class ApplicationDatabase extends FloorDatabase {
  UserDao get userDao;
}