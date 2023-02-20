import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty_flutter/features/characters/data/models/location/dto/location_dto.dart';
import 'package:rick_and_morty_flutter/features/characters/domain/models/character.dart';

part 'character_dto.g.dart';

@JsonSerializable()
class CharacterDTO {
  final int? id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final Map<String, dynamic>? origin;
  final LocationDTO? location;
  final String? image;
  final List<String>? episode;
  final String? url;
  final String? created;

  CharacterDTO({
    this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.origin,
    this.location,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  factory CharacterDTO.fromJson(Map<String, dynamic> json) =>
      _$CharacterDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterDTOToJson(this);

  Character asDomain() {
    return Character(
      id: id ?? 0,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      originName: "originName",
      originUrl: "originUrl",
      locationName: location?.name,
      locationUrl: location?.url,
      image: image,
      episode: episode,
      url: url,
      created: created,
    );
  }
}