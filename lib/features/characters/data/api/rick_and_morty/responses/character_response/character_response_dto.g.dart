// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterResponseDTO _$CharacterResponseDTOFromJson(
        Map<String, dynamic> json) =>
    CharacterResponseDTO(
      pageInfo: json['info'] == null
          ? null
          : PageInfoDTO.fromJson(json['info'] as Map<String, dynamic>),
      characters: (json['results'] as List<dynamic>?)
          ?.map((e) => CharacterDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharacterResponseDTOToJson(
        CharacterResponseDTO instance) =>
    <String, dynamic>{
      'info': instance.pageInfo,
      'results': instance.characters,
    };

PageInfoDTO _$PageInfoDTOFromJson(Map<String, dynamic> json) => PageInfoDTO(
      count: json['count'] as int?,
      pages: json['pages'] as int?,
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$PageInfoDTOToJson(PageInfoDTO instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
