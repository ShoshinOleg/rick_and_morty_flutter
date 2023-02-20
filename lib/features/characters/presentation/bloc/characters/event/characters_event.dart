import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_event.freezed.dart';

@freezed
abstract class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.updateCharacters() = UpdateCharactersEvent;
}