import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_flutter/core/error/failures.dart';
import 'package:rick_and_morty_flutter/core/resouce.dart';
import 'package:rick_and_morty_flutter/features/characters/presentation/bloc/characters/state/characters_state.dart';

import '../../../../../core/extensions/cast.dart';
import '../../../data/db/dao/character_dao.dart';
import '../../../domain/models/character.dart';
import '../../../domain/repositories/characters/characters_repository.dart';
import 'event/characters_event.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final CharactersRepository repository;
  final CharacterDao dao;

  CharactersBloc(this.dao, this.repository) : super(const CharactersState.initial()) {
    on<UpdateCharactersEvent>(_handeUpdate);
  }

  Future<void> _handeUpdate(UpdateCharactersEvent e, Emitter<CharactersState> emit) async {
    await _onUpdateCharactersEvent(emit);
  }

  Future<void> _onUpdateCharactersEvent(Emitter<CharactersState> emit) async {
    await emit.forEach(
        repository.getCharacters(),
        onData: (data) {
          return data.toState();
        }
    );
  }
}

extension _ResourceCharactersMapper on Resource<List<Character>> {
  CharactersState toState() {
    if (this is Success) {
      return LoadedCharactersState(
          characters: tryCast<Success<List<Character>>>(this)?.data
      );
    } else if (this is Loading) {
      return LoadingCharactersState(
          characters: tryCast<Loading<List<Character>>>(this)?.data
      );
    } else {
      return CharactersState.error(
          tryCast<Error<List<Character>>>(this)?.failure.message 
              ?? const Failure.base().message
      );
    }
  }
}