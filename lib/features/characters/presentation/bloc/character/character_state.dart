part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState.preloaded(
      Character character
  ) = PreloadedCharacterState;

  const factory CharacterState.initial() = InitialCharacterState;

  const factory CharacterState.loading(
      Character? character
  ) = LoadingCharacterState;

  const factory CharacterState.loaded(
      Character? character
  ) = LoadedCharacterState;

  const factory CharacterState.error(String message) = ErrorCharacterState;
}
