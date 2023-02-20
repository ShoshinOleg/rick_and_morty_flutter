// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CharacterDao? _characterDaoInstance;

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
            'CREATE TABLE IF NOT EXISTS `CharacterDBO` (`id` INTEGER NOT NULL, `name` TEXT, `status` TEXT, `species` TEXT, `type` TEXT, `gender` TEXT, `originName` TEXT, `originUrl` TEXT, `locationName` TEXT, `locationUrl` TEXT, `image` TEXT, `episode` TEXT, `url` TEXT, `created` TEXT, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CharacterDao get characterDao {
    return _characterDaoInstance ??= _$CharacterDao(database, changeListener);
  }
}

class _$CharacterDao extends CharacterDao {
  _$CharacterDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _characterDBOInsertionAdapter = InsertionAdapter(
            database,
            'CharacterDBO',
            (CharacterDBO item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'status': item.status,
                  'species': item.species,
                  'type': item.type,
                  'gender': item.gender,
                  'originName': item.originName,
                  'originUrl': item.originUrl,
                  'locationName': item.locationName,
                  'locationUrl': item.locationUrl,
                  'image': item.image,
                  'episode': _stringListConverter.encode(item.episode),
                  'url': item.url,
                  'created': item.created
                },
            changeListener),
        _characterDBODeletionAdapter = DeletionAdapter(
            database,
            'CharacterDBO',
            ['id'],
            (CharacterDBO item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'status': item.status,
                  'species': item.species,
                  'type': item.type,
                  'gender': item.gender,
                  'originName': item.originName,
                  'originUrl': item.originUrl,
                  'locationName': item.locationName,
                  'locationUrl': item.locationUrl,
                  'image': item.image,
                  'episode': _stringListConverter.encode(item.episode),
                  'url': item.url,
                  'created': item.created
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CharacterDBO> _characterDBOInsertionAdapter;

  final DeletionAdapter<CharacterDBO> _characterDBODeletionAdapter;

  @override
  Stream<List<CharacterDBO>> stream() {
    return _queryAdapter.queryListStream('SELECT * FROM CharacterDBO',
        mapper: (Map<String, Object?> row) => CharacterDBO(
            id: row['id'] as int,
            name: row['name'] as String?,
            status: row['status'] as String?,
            species: row['species'] as String?,
            type: row['type'] as String?,
            gender: row['gender'] as String?,
            originName: row['originName'] as String?,
            originUrl: row['originUrl'] as String?,
            locationName: row['locationName'] as String?,
            locationUrl: row['locationUrl'] as String?,
            image: row['image'] as String?,
            episode: _stringListConverter.decode(row['episode'] as String),
            url: row['url'] as String?,
            created: row['created'] as String?),
        queryableName: 'CharacterDBO',
        isView: false);
  }

  @override
  Future<List<CharacterDBO>> getAllCharacters() async {
    return _queryAdapter.queryList('SELECT * FROM CharacterDBO',
        mapper: (Map<String, Object?> row) => CharacterDBO(
            id: row['id'] as int,
            name: row['name'] as String?,
            status: row['status'] as String?,
            species: row['species'] as String?,
            type: row['type'] as String?,
            gender: row['gender'] as String?,
            originName: row['originName'] as String?,
            originUrl: row['originUrl'] as String?,
            locationName: row['locationName'] as String?,
            locationUrl: row['locationUrl'] as String?,
            image: row['image'] as String?,
            episode: _stringListConverter.decode(row['episode'] as String),
            url: row['url'] as String?,
            created: row['created'] as String?));
  }

  @override
  Future<CharacterDBO?> getById(int id) async {
    return _queryAdapter.query('SELECT * FROM CharacterDBO WHERE id = ?1',
        mapper: (Map<String, Object?> row) => CharacterDBO(
            id: row['id'] as int,
            name: row['name'] as String?,
            status: row['status'] as String?,
            species: row['species'] as String?,
            type: row['type'] as String?,
            gender: row['gender'] as String?,
            originName: row['originName'] as String?,
            originUrl: row['originUrl'] as String?,
            locationName: row['locationName'] as String?,
            locationUrl: row['locationUrl'] as String?,
            image: row['image'] as String?,
            episode: _stringListConverter.decode(row['episode'] as String),
            url: row['url'] as String?,
            created: row['created'] as String?),
        arguments: [id]);
  }

  @override
  Future<void> deleteAllCharacters() async {
    await _queryAdapter.queryNoReturn('DELETE FROM CharacterDBO');
  }

  @override
  Future<void> insertCharacters(List<CharacterDBO> characters) async {
    await _characterDBOInsertionAdapter.insertList(
        characters, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertCharacter(CharacterDBO character) async {
    await _characterDBOInsertionAdapter.insert(
        character, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteCharacter(CharacterDBO character) async {
    await _characterDBODeletionAdapter.delete(character);
  }

  @override
  Future<void> replaceCharacters(List<CharacterDBO> characters) async {
    if (database is sqflite.Transaction) {
      await super.replaceCharacters(characters);
    } else {
      await (database as sqflite.Database)
          .transaction<void>((transaction) async {
        final transactionDatabase = _$AppDatabase(changeListener)
          ..database = transaction;
        await transactionDatabase.characterDao.replaceCharacters(characters);
      });
    }
  }
}

// ignore_for_file: unused_element
final _stringListConverter = StringListConverter();
