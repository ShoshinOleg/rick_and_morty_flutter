import 'package:floor/floor.dart';
import 'package:rick_and_morty_flutter/features/characters/domain/models/character.dart';

@entity
class CharacterDBO {
  @primaryKey
  final int id;
  final String? name;
  final String? status;
  final String? species;
  final String? type;
  final String? gender;
  final String? originName;
  final String? originUrl;
  final String? locationName;
  final String? locationUrl;
  final String? image;
  final List<String>? episode;
  final String? url;
  final String? created;

  CharacterDBO({
    required this.id,
    this.name,
    this.status,
    this.species,
    this.type,
    this.gender,
    this.originName,
    this.originUrl,
    this.locationName,
    this.locationUrl,
    this.image,
    this.episode,
    this.url,
    this.created,
  });

  Character asDomain() {
    return Character(
      id: id,
      name: name,
      status: status,
      species: species,
      type: type,
      gender: gender,
      originName: originName,
      originUrl: originUrl,
      locationName: locationName,
      locationUrl: locationUrl,
      image: image,
      episode: episode,
      url: url,
      created: created,
    );
  }

  static CharacterDBO fromDomain(Character character) {
    return CharacterDBO(
      id: character.id,
      name: character.name,
      status: character.status,
      species: character.species,
      type: character.type,
      gender: character.gender,
      originName: character.originName,
      originUrl: character.originUrl,
      locationName: character.locationName,
      locationUrl: character.locationUrl,
      image: character.image,
      episode: character.episode,
      url: character.url,
      created: character.created,
    );
  }
}