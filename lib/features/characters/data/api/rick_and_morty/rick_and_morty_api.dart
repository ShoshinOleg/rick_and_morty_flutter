import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_and_morty_flutter/features/characters/data/api/rick_and_morty/responses/character_response/character_response_dto.dart';

part 'rick_and_morty_api.g.dart';

@RestApi(baseUrl: "https://rickandmortyapi.com/api/")
abstract class RickAndMortyApi {
  factory RickAndMortyApi(Dio dio, {String baseUrl}) = _RickAndMortyApi;

  @GET("character")
  Future<CharacterResponseDTO> getCharacterResponse();
}