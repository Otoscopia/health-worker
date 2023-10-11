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

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  UserDao get userDao {
    return _userDaoInstance ??= _$UserDao(database, changeListener);
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
    await _queryAdapter.queryNoReturn('DROP TABLE user');
  }

  @override
  Future<void> insertUser(UserModel user) async {
    await _userModelInsertionAdapter.insert(user, OnConflictStrategy.abort);
  }
}
