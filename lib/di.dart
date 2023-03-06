import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_and_morty_flutter/features/characters/data/datasources/remote/characters/remote_character_data_source_impl.dart';
import 'package:rick_and_morty_flutter/features/characters/data/db/database/app_database.dart';
import 'package:rick_and_morty_flutter/features/characters/presentation/bloc/characters/characters_bloc.dart';
import 'features/characters/data/api/rick_and_morty/rick_and_morty_api.dart';
import 'features/characters/data/datasources/local/characters/local_character_data_source.dart';
import 'features/characters/data/datasources/local/characters/local_character_data_source_impl.dart';
import 'features/characters/data/datasources/remote/characters/remote_character_data_source.dart';
import 'features/characters/data/db/dao/character_dao.dart';
import 'features/characters/data/repositories/character/character_repository_impl.dart';
import 'features/characters/domain/repositories/characters/characters_repository.dart';

final getIt = GetIt.instance;

Future<void> initGetIt() async {
  final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();

  getIt.registerLazySingleton<CharacterDao>(() =>
    database.characterDao
  );

  getIt.registerLazySingleton<CharacterLocalDataSource>(() =>
      CharacterLocalDataSourceImpl(database.characterDao)
  );
  
  getIt.registerLazySingleton<RickAndMortyApi>(() =>
      RickAndMortyApi(Dio())
  );

  getIt.registerLazySingleton<CharacterRemoteDataSource>(() =>
      CharacterRemoteDataSourceImpl(getIt())
  );

  getIt.registerLazySingleton<CharactersRepository>(() =>
      CharactersRepositoryImpl(getIt())
  );

  getIt.registerFactory<CharactersCacheSource>(() =>
      CharactersCacheSource(getIt(), getIt())
  );
  
  getIt.registerFactory(() => CharactersBloc(getIt()));
}