import '../../../../domain/models/character.dart';

abstract class CharacterRemoteDataSource {
  Future<List<Character>> getCharacters();
}