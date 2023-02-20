import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_flutter/features/characters/data/models/character/dto/character_dto.dart';

part 'character_response_dto.g.dart';

@JsonSerializable()
class CharacterResponseDTO {
  @JsonKey(name: 'info')
  final PageInfoDTO? pageInfo;

  @JsonKey(name: 'results')
  final List<CharacterDTO>? characters;

  const CharacterResponseDTO({required this.pageInfo, required this.characters});

  factory CharacterResponseDTO.fromJson(Map<String, dynamic> json) => _$CharacterResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterResponseDTOToJson(this);
}

@JsonSerializable()
class PageInfoDTO {
  final int? count;
  final int? pages;
  final String? next;
  final String? prev;

  const PageInfoDTO({required this.count, required this.pages, required this.next, required this.prev});

  factory PageInfoDTO.fromJson(Map<String, dynamic> json) => _$PageInfoDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoDTOToJson(this);
}