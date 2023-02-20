import 'dart:async';

import 'package:rick_and_morty_flutter/core/resouce.dart';
import 'package:rick_and_morty_flutter/core/source/cache/cache_source.dart';
import 'package:rick_and_morty_flutter/features/characters/data/datasources/local/characters/local_character_data_source.dart';
import 'package:rick_and_morty_flutter/features/characters/data/datasources/remote/characters/remote_character_data_source.dart';
import 'package:rick_and_morty_flutter/features/characters/domain/models/character.dart';

import '../../../domain/repositories/characters/characters_repository.dart';

class CharactersRepositoryImpl implements CharactersRepository {
  final CharactersCacheSource source;

  CharactersRepositoryImpl(this.source,);

  @override
  Stream<Resource<List<Character>>> getCharacters() {
    return source.asFlow(strategy: const CacheStrategy.dbFirstUpdate());
  }
}

class CharactersCacheSource extends CacheSource<List<Character>> {
  final CharacterLocalDataSource localDataSource;
  final CharacterRemoteDataSource remoteDataSource;

  CharactersCacheSource(this.localDataSource, this.remoteDataSource,);

  @override
  Future<Resource<List<Character>>> createCall() async {
    return resource(() async => remoteDataSource.getCharacters());
  }

  @override
  Stream<List<Character>> localFlow() => localDataSource.stream();

  @override
  Future<void> saveCallResult(List<Character>? result) async {
    return localDataSource.cacheCharacters(result ?? List.empty());
  }
}