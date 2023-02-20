import 'package:rick_and_morty_flutter/features/characters/data/db/dao/character_dao.dart';
import 'package:rick_and_morty_flutter/features/characters/data/models/character/dbo/character_dbo.dart';
import 'package:rick_and_morty_flutter/features/characters/domain/models/character.dart';
import 'local_character_data_source.dart';

class CharacterLocalDataSourceImpl implements CharacterLocalDataSource {
  final CharacterDao characterDao;

  CharacterLocalDataSourceImpl(this.characterDao);

  @override
  Future<List<Character>> getCachedCharacters() async {
    final charactersDBO = await characterDao.getAllCharacters();
    return charactersDBO
        .map((characterDBO) => characterDBO.asDomain()).toList();
  }

  @override
  Future<void> cacheCharacters(List<Character> characters) async {
    final charactersDBO = characters
        .map((character) => CharacterDBO.fromDomain(character)).toList();
    await characterDao.deleteAllCharacters();
    await characterDao.insertCharacters(charactersDBO);
  }

  @override
  Stream<List<Character>> stream() {
    return characterDao.stream()
      .map((data) =>
        data.map((characterDBO) => characterDBO.asDomain()).toList()
      );
  }
}