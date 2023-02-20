part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.started() = UpdateCharacterEvent;
  const factory CharacterEvent.refresh() = RefreshCharacterEvent;
}
