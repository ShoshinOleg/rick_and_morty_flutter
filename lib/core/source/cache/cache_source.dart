import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_flutter/core/error/failures.dart';
import 'package:rick_and_morty_flutter/core/extensions/cast.dart';
import 'package:rick_and_morty_flutter/core/resouce.dart';
import 'package:rick_and_morty_flutter/core/source/base/source.dart';

part 'cache_source.freezed.dart';

abstract class CacheSource<T> extends Source {
  final bool showInitialLoading;

  CacheSource({this.showInitialLoading = false});

  Future<Resource<T>> fetchFromNetwork() async {
    final apiResponse = await createCall();
    if (apiResponse is Success) {
      await saveCallResult(apiResponse.data);
      return Resource.success(data: apiResponse.data);
    } else if (apiResponse is Error) {
      return Resource.error(failure: tryCast<Error>(apiResponse)?.failure);
    } else {
      return Resource.error(failure: const Failure.base());
    }
  }

  Stream<Resource<T>> asFlow({
    CacheStrategy strategy = const DbFirstUpdate()
  }) async* {
    if (strategy is DbFirstUpdate) {
      yield Loading(data: await localFlow().first);
      final networkResponse = await fetchFromNetwork();
      if (networkResponse is Error) {
        yield Resource.error(
            failure: tryCast<Error>(networkResponse)?.failure
        );
      } else {
        yield* localFlow().map((data) => Resource.success(data: data));
      }
    }
  }

  Future<Resource<T>> createCall();
  Future<void> saveCallResult(T? result);
  Stream<T> localFlow();
}

@freezed
class CacheStrategy with _$CacheStrategy {
  const factory CacheStrategy.dbFirstUpdate() = DbFirstUpdate;
}