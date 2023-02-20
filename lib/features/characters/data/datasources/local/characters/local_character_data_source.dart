import 'package:rick_and_morty_flutter/features/characters/domain/models/character.dart';

abstract class CharacterLocalDataSource {
  Future<List<Character>> getCachedCharacters();
  Future<void> cacheCharacters(List<Character> characters);
  Stream<List<Character>> stream();
}