import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/character.dart';
import '../bloc/character/character_bloc.dart';

class CharacterPage extends StatefulWidget {
  final Character? characterArg;
  final int? characterId;

  const CharacterPage._({
      this.characterId,
      this.characterArg,
      Key? key
  }): super(key: key);

  const CharacterPage.initial(
      int characterId,
      {Key? key}
  ) : this._(characterId: characterId, characterArg: null, key: key);

  const CharacterPage.preloaded(
      Character character,
      {Key? key}
  ) : this._(characterId: null, characterArg: character, key: key);

  @override
  State<CharacterPage> createState() => CharacterPageState();
}

class CharacterPageState extends State<CharacterPage> {
  late CharacterBloc _bloc;

  @override
  void initState() {
    final character = widget.characterArg;
    final characterId = widget.characterId;
    if (character != null) {
      _bloc = CharacterBloc.preloaded(character);
    } else if(characterId != null){
      _bloc = CharacterBloc.initial(characterId);
    } else {
      throw ArgumentError();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty Characters'),
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        bloc: _bloc,
        builder: (context, state) {
          return state.when<Widget>(
            initial: () => _initialState(),
            preloaded: (character) => _preloadedState(character),
            loading: (Character? character) => _loadingState(character),
            loaded: (Character? character) => _loadedState(character),
            error: (String message) => _errorState(message, _bloc.add),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  Widget _initialState() => Container();

  Widget _preloadedState(Character character) =>
      _CharacterBody(character: character);

  Widget _loadingState(Character? character) {
    return character == null
        ? const CircularProgressIndicator()
        : _CharacterBody(character: character);
  }

  Widget _loadedState(Character? character) {
    return character != null
        ? _CharacterBody(character: character)
        : const _CharacterPlaceholder();
  }

  Widget _errorState(
      String message,
      void Function(CharacterEvent event) eventHandler
  ) => Column(
    children: [
      Text(message),
      TextButton(
          onPressed: () {
            eventHandler.call(const CharacterEvent.refresh());
          },
          child: const Text("Повторить")
      )
    ],
  );
}

class _CharacterBody extends StatelessWidget {
  final Character character;

  const _CharacterBody({required this.character, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          character.image ?? "",
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character.name ?? "",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(height: 4),
              Text(
                'Species: ${character.species}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                ),
              ),
              Text(
                'Gender: ${character.gender}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                ),
              ),
              Text(
                'Last location: ${character.locationName ?? ""}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                ),
              ),
              Text(
                'Episodes count: ${character.episode?.length ?? 0}',
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class _CharacterPlaceholder extends StatelessWidget {

  const _CharacterPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Пришло непонятно что");
  }
}