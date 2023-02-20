import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/character.dart';
part 'characters_state.freezed.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = InitialCharactersState;
  const factory CharactersState.loading({
    List<Character>? characters
  }) = LoadingCharactersState;
  const factory CharactersState.loaded({
      List<Character>? characters
  }) = LoadedCharactersState;
  const factory CharactersState.error(String message) = ErrorCharactersState;
}