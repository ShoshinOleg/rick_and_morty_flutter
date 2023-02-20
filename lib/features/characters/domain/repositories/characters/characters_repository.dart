import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_flutter/core/error/failures.dart';
import 'package:rick_and_morty_flutter/features/characters/domain/models/character.dart';

import '../../../../../core/resouce.dart';

// abstract class CharactersRepository {
//   Future<Either<Failure, List<Character>>> getCharacters();
// }

abstract class CharactersRepository {
  Stream<Resource<List<Character>>> getCharacters();
}