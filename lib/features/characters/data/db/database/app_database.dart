import 'dart:async';

import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:rick_and_morty_flutter/features/characters/data/db/converters/string_list_converter.dart';
import 'package:rick_and_morty_flutter/features/characters/data/db/dao/character_dao.dart';
import 'package:rick_and_morty_flutter/features/characters/data/models/character/dbo/character_dbo.dart';

part 'app_database.g.dart';

@TypeConverters([StringListConverter])
@Database(version: 1, entities: [CharacterDBO])
abstract class AppDatabase extends FloorDatabase {
  CharacterDao get characterDao;
}