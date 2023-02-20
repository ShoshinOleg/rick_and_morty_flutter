import 'package:floor/floor.dart';
import 'package:rick_and_morty_flutter/features/characters/data/models/character/dbo/character_dbo.dart';

@dao
abstract class CharacterDao {
  @Query('SELECT * FROM CharacterDBO')
  Stream<List<CharacterDBO>> stream();

  @Query('SELECT * FROM CharacterDBO')
  Future<List<CharacterDBO>> getAllCharacters();

  @Query('SELECT * FROM CharacterDBO WHERE id = :id')
  Future<CharacterDBO?> getById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertCharacters(List<CharacterDBO> characters);

  @insert
  Future<void> insertCharacter(CharacterDBO character);

  @delete
  Future<void> deleteCharacter(CharacterDBO character);

  @Query('DELETE FROM CharacterDBO')
  Future<void> deleteAllCharacters();

  @transaction
  Future<void> replaceCharacters(List<CharacterDBO> characters) async {
    await deleteAllCharacters();
    await insertCharacters(characters);
  }
}