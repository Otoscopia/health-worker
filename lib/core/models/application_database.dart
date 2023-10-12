import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:health_worker/core/models/DAO/authentication_dao.dart';
import 'package:health_worker/core/models/DAO/patients_dao.dart';
import 'package:health_worker/core/models/DAO/user_dao.dart';
import 'package:health_worker/features/authentication/data/models/authentication_model.dart';
import 'package:health_worker/features/app/data/models/patient_models.dart';
import 'package:health_worker/features/authentication/data/models/user_model.dart';

part 'application_database.g.dart';

@Database(version: 1, entities: [UserModel, AuthenticationModel, PatientModel])
abstract class ApplicationDatabase extends FloorDatabase {
  UserDao get userDao;
  AuthenticationDao get authDao;
  PatientDao get patientDao;
}