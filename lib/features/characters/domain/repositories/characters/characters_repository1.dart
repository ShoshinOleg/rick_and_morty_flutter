import 'package:rick_and_morty_flutter/core/resouce.dart';

import '../../models/character.dart';

abstract class CharactersRepository1 {
  Stream<Resource<List<Character>>> getCharacters();
}