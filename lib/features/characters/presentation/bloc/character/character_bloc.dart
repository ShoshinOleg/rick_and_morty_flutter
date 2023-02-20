import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/character.dart';

part 'character_event.dart';
part 'character_state.dart';
part 'character_bloc.freezed.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {

  CharacterBloc.initial(int characterId) : super(const CharacterState.initial());

  CharacterBloc.preloaded(
      Character character
  ) : super(CharacterState.preloaded(character)) {
    _setupEventHandlers();
  }

  void _setupEventHandlers() {
    on<UpdateCharacterEvent>(_handeUpdate);
  }

  Future<void> _handeUpdate(CharacterEvent e, Emitter<CharacterState> emit) async {
    // print("handle update");
    await _onUpdateCharactersEvent(emit);
  }

  Future<void> _onUpdateCharactersEvent(Emitter<CharacterState> emit) async {
    // print(state);
    await state.when(
      preloaded: (character) async {
        emit(CharacterState.loading(character));
        await _updateCharacter(emit);
      },
      initial: () async {
        emit(const CharacterState.loading(null));
        await _updateCharacter(emit);
      }, 
      loading: (_) {},
      loaded: (Character? character) async {
        emit(CharacterState.loading(character));
        await _updateCharacter(emit);
      },
      error: (String message) async {
        emit(const CharacterState.loading(null));
        await _updateCharacter(emit);
      }
    );
  }

  Future<void> _updateCharacter(Emitter emit) async {
    // var newCharacters = await repository.getCharacters();
    // emit(newCharacters.fold(
    //         (failure) => CharactersState.error(failure.message),
    //         (characters) => CharactersState.loaded(characters: characters)
    // ));
  }
}
