import 'package:dio/dio.dart';
import 'package:rick_and_morty_flutter/core/error/exceptions.dart';
import 'package:rick_and_morty_flutter/features/characters/data/api/rick_and_morty/rick_and_morty_api.dart';

import '../../../../domain/models/character.dart';
import 'remote_character_data_source.dart';

class CharacterRemoteDataSourceImpl implements CharacterRemoteDataSource {

  final RickAndMortyApi api;

  CharacterRemoteDataSourceImpl(this.api);

  @override
  Future<List<Character>> getCharacters() async {
    try {
      final response = await api.getCharacterResponse();
      return response.characters?.map((item) => item.asDomain()).toList()
          ?? List.empty();
    } on DioError {
      throw NetworkException();
    }
  }
}