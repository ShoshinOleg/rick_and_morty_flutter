import 'package:freezed_annotation/freezed_annotation.dart';

import 'error/failures.dart';

class Resource<T> {
  T? data;

  Resource({this.data});

  factory Resource.success({T? data}) => Success(data: data);
  factory Resource.loading({T? data}) => Loading(data: data);
  factory Resource.error({Failure? failure, T? data}) =>
      Error(failure ?? const Failure.base(), data: data);
}

class Success<T> extends Resource<T> {
  Success({super.data});
}

class Loading<T> extends Resource<T> {
  Loading({super.data});
}

class Error<T> extends Resource<T> {
  Failure failure;

  Error(this.failure, {super.data});
}