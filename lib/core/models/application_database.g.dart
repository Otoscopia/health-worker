// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorApplicationDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$ApplicationDatabaseBuilder databaseBuilder(String name) =>
      _$ApplicationDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$ApplicationDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$ApplicationDatabaseBuilder(null);
}

class _$ApplicationDatabaseBuilder {
  _$ApplicationDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$ApplicationDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$ApplicationDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<ApplicationDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$ApplicationDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$ApplicationDatabase extends ApplicationDatabase {
  _$ApplicationDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  UserDao? _userDaoInstance;

  AuthenticationDao? _authDaoInstance;

  PatientDao? _patientDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `user` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `uid` TEXT, `createdAt` TEXT, `updatedAt` TEXT, `name` TEXT, `registration` TEXT, `passwordUpdate` TEXT, `email` TEXT, `phone` TEXT, `accessedAt` TEXT, `prefs` TEXT, `labels` TEXT, `status` INTEGER, `emailVerification` INTEGER, `phoneVerification` INTEGER)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `auth_status` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `authenticated` INTEGER, `signedOut` INTEGER, `loading` INTEGER NOT NULL, `error` INTEGER NOT NULL, `errorMessage` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `patients` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `uid` TEXT NOT NULL, `fullName` TEXT NOT NULL, `gender` TEXT NOT NULL, `birthdate` TEXT NOT NULL, `contactNumber` TEXT NOT NULL, `schoolName` TEXT NOT NULL, `schoolID` TEXT NOT NULL, `genderError` INTEGER, `birthdateError` INTEGER)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
  }

  @override
  AuthenticationDao get authDao {
    return _authDaoInstance ??= _$AuthenticationDao(database, changeListener);
  }

  @override
  PatientDao get patientDao {
    return _patientDaoInstance ??= _$PatientDao(database, changeListener);
  }
}

class _$UserDao extends UserDao {
  _$UserDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _userModelInsertionAdapter = InsertionAdapter(
            database,
            'user',
            (UserModel item) => <String, Object?>{
                  'id': item.id,
                  'uid': item.uid,
                  'createdAt': item.createdAt,
                  'updatedAt': item.updatedAt,
                  'name': item.name,
                  'registration': item.registration,
                  'passwordUpdate': item.passwordUpdate,
                  'email': item.email,
                  'phone': item.phone,
                  'accessedAt': item.accessedAt,
                  'prefs': item.prefs,
                  'labels': item.labels,
                  'status': item.status == null ? null : (item.status! ? 1 : 0),
                  'emailVerification': item.emailVerification == null
                      ? null
                      : (item.emailVerification! ? 1 : 0),
                  'phoneVerification': item.phoneVerification == null
                      ? null
                      : (item.phoneVerification! ? 1 : 0)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<UserModel> _userModelInsertionAdapter;

  @override
  Future<List<UserModel>> fetchUser() async {
    return _queryAdapter.queryList('SELECT * FROM user',
        mapper: (Map<String, Object?> row) => UserModel(
            id: row['id'] as int,
            uid: row['uid'] as String?,
            createdAt: row['createdAt'] as String?,
            updatedAt: row['updatedAt'] as String?,
            name: row['name'] as String?,
            registration: row['registration'] as String?,
            passwordUpdate: row['passwordUpdate'] as String?,
            email: row['email'] as String?,
            phone: row['phone'] as String?,
            accessedAt: row['accessedAt'] as String?,
            emailVerification: row['emailVerification'] == null
                ? null
                : (row['emailVerification'] as int) != 0,
            phoneVerification: row['phoneVerification'] == null
                ? null
                : (row['phoneVerification'] as int) != 0,
            prefs: row['prefs'] as String?,
            status: row['status'] == null ? null : (row['status'] as int) != 0,
            labels: row['labels'] as String?));
  }

  @override
  Future<void> dropUser() async {
    await _queryAdapter.queryNoReturn('TRUNCATE TABLE user');
  }

  @override
  Future<void> insertUser(UserModel user) async {
    await _userModelInsertionAdapter.insert(user, OnConflictStrategy.abort);
  }
}

class _$AuthenticationDao extends AuthenticationDao {
  _$AuthenticationDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _authenticationModelInsertionAdapter = InsertionAdapter(
            database,
            'auth_status',
            (AuthenticationModel item) => <String, Object?>{
                  'id': item.id,
                  'authenticated': item.authenticated == null
                      ? null
                      : (item.authenticated! ? 1 : 0),
                  'signedOut':
                      item.signedOut == null ? null : (item.signedOut! ? 1 : 0),
                  'loading': item.loading ? 1 : 0,
                  'error': item.error ? 1 : 0,
                  'errorMessage': item.errorMessage
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<AuthenticationModel>
      _authenticationModelInsertionAdapter;

  @override
  Future<List<AuthenticationModel>> fetchAuthStatus() async {
    return _queryAdapter.queryList('SELECT * FROM auth_status',
        mapper: (Map<String, Object?> row) => AuthenticationModel(
            id: row['id'] as int,
            loading: (row['loading'] as int) != 0,
            error: (row['error'] as int) != 0,
            authenticated: row['authenticated'] == null
                ? null
                : (row['authenticated'] as int) != 0,
            signedOut: row['signedOut'] == null
                ? null
                : (row['signedOut'] as int) != 0));
  }

  @override
  Future<void> dropAuthStatus() async {
    await _queryAdapter.queryNoReturn('TRUNCATE TABLE auth_status');
  }

  @override
  Future<void> insertAuthStatus(AuthenticationModel authStatus) async {
    await _authenticationModelInsertionAdapter.insert(
        authStatus, OnConflictStrategy.abort);
  }
}

class _$PatientDao extends PatientDao {
  _$PatientDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _patientModelInsertionAdapter = InsertionAdapter(
            database,
            'patients',
            (PatientModel item) => <String, Object?>{
                  'id': item.id,
                  'uid': item.uid,
                  'fullName': item.fullName,
                  'gender': item.gender,
                  'birthdate': item.birthdate,
                  'contactNumber': item.contactNumber,
                  'schoolName': item.schoolName,
                  'schoolID': item.schoolID,
                  'genderError': item.genderError == null
                      ? null
                      : (item.genderError! ? 1 : 0),
                  'birthdateError': item.birthdateError == null
                      ? null
                      : (item.birthdateError! ? 1 : 0)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<PatientModel> _patientModelInsertionAdapter;

  @override
  Future<List<PatientModel>> fetchPatients() async {
    return _queryAdapter.queryList('SELECT * FROM patients',
        mapper: (Map<String, Object?> row) => PatientModel(
            id: row['id'] as int?,
            uid: row['uid'] as String,
            fullName: row['fullName'] as String,
            gender: row['gender'] as String,
            contactNumber: row['contactNumber'] as String,
            birthdate: row['birthdate'] as String,
            schoolName: row['schoolName'] as String,
            schoolID: row['schoolID'] as String));
  }

  @override
  Future<void> dropPatient() async {
    await _queryAdapter.queryNoReturn('TRUNCATE TABLE patients');
  }

  @override
  Future<void> insertPatient(PatientModel patient) async {
    await _patientModelInsertionAdapter.insert(
        patient, OnConflictStrategy.abort);
  }
}
