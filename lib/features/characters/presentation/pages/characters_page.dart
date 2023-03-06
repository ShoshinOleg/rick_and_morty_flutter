import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_and_morty_flutter/di.dart';
import 'package:rick_and_morty_flutter/features/characters/domain/models/character.dart';
import 'package:rick_and_morty_flutter/features/characters/presentation/pages/character_page.dart';
import 'package:transparent_image/transparent_image.dart';

import '../bloc/characters/characters_bloc.dart';
import '../bloc/characters/event/characters_event.dart';
import '../bloc/characters/state/characters_state.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  CharactersPageState createState() => CharactersPageState();
}

class CharactersPageState extends State<CharactersPage> {
  late CharactersBloc _bloc;
  final RefreshController _refreshController =
  RefreshController(initialRefresh: true);
  final GlobalKey _refresherKey = GlobalKey();
  final GlobalKey _contentKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharactersBloc>(
      create: (_) => getIt<CharactersBloc>(),
      child: RefreshConfiguration(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Rick and Morty Characters'),
          ),
          body: BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              final bloc = context.read<CharactersBloc>();
              return state.map<Widget>(
                initial: (state) => Container(),
                loading: (state) => _loadingState(state, bloc.add),
                loaded: (state) => _loadedState(state, bloc.add),
                error: (state) => Text(state.message)
              );
            },
          ),
        ),
      )
    );
  }

  Widget _loadedState(
      LoadedCharactersState state,
      void Function (CharactersEvent) eventHandler
      ) {
    _refreshController.refreshCompleted();

    return SmartRefresher(
        key: _refresherKey,
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: () {
          eventHandler.call(const CharactersEvent.updateCharacters());
        },
        child: ListView.builder(
          key: _contentKey,
          itemCount: state.characters?.length,
          itemBuilder: (BuildContext context, int index) {
            final character = state.characters?.elementAt(index);
            return character != null ? CharacterWidget(character: character) : null;
          }
        )
    );
  }

  Widget _loadingState(
      LoadingCharactersState state,
      void Function (CharactersEvent) eventHandler
  ) {
    return SmartRefresher(
        key: _refresherKey,
        controller: _refreshController,
        enablePullDown: true,
        onRefresh: () {
          eventHandler.call(const CharactersEvent.updateCharacters());
        },
        child: ListView.builder(
          key: _contentKey,
          itemCount: state.characters?.length,
          itemBuilder: (BuildContext context, int index) {
            final character = state.characters?.elementAt(index);
            if (character != null) {
              return CharacterWidget(character: character);
            } else {
              return null;
            }
          }
        )
    );
  }
}

class CharactersWidget extends StatelessWidget {
  final List<Character>? characters;
  final Key? listKey;

  const CharactersWidget({this.listKey, Key? key, required this.characters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: listKey,
      itemCount: characters?.length,
      itemBuilder: (BuildContext context, int index) {
        final character = characters?.elementAt(index);
        if (character != null) {
          return CharacterWidget(character: character);
        } else {
          return null;
        }
      }
    );
  }
}

class CharacterWidget extends StatelessWidget {
  final Character character;

  const CharacterWidget({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
      child:
      Stack(children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: FadeInImage.memoryNetwork(
                height: 100,
                width: 100,
                image: character.image ?? "",
                placeholder: kTransparentImage,
                fadeInDuration: const Duration(milliseconds: 400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                ],
              )
            )
          ],
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CharacterPage.preloaded(character)
                  )
                );
              },
              splashColor: const Color.fromRGBO(120, 120, 120, 0.1),
              highlightColor: const Color.fromRGBO(150, 150, 150, 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
          )
        )
      ])
    );
  }
}