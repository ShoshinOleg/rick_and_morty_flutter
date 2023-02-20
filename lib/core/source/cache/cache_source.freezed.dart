// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cache_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CacheStrategy {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dbFirstUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dbFirstUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dbFirstUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DbFirstUpdate value) dbFirstUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DbFirstUpdate value)? dbFirstUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DbFirstUpdate value)? dbFirstUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CacheStrategyCopyWith<$Res> {
  factory $CacheStrategyCopyWith(
          CacheStrategy value, $Res Function(CacheStrategy) then) =
      _$CacheStrategyCopyWithImpl<$Res, CacheStrategy>;
}

/// @nodoc
class _$CacheStrategyCopyWithImpl<$Res, $Val extends CacheStrategy>
    implements $CacheStrategyCopyWith<$Res> {
  _$CacheStrategyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DbFirstUpdateCopyWith<$Res> {
  factory _$$DbFirstUpdateCopyWith(
          _$DbFirstUpdate value, $Res Function(_$DbFirstUpdate) then) =
      __$$DbFirstUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DbFirstUpdateCopyWithImpl<$Res>
    extends _$CacheStrategyCopyWithImpl<$Res, _$DbFirstUpdate>
    implements _$$DbFirstUpdateCopyWith<$Res> {
  __$$DbFirstUpdateCopyWithImpl(
      _$DbFirstUpdate _value, $Res Function(_$DbFirstUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DbFirstUpdate implements DbFirstUpdate {
  const _$DbFirstUpdate();

  @override
  String toString() {
    return 'CacheStrategy.dbFirstUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DbFirstUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dbFirstUpdate,
  }) {
    return dbFirstUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? dbFirstUpdate,
  }) {
    return dbFirstUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dbFirstUpdate,
    required TResult orElse(),
  }) {
    if (dbFirstUpdate != null) {
      return dbFirstUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DbFirstUpdate value) dbFirstUpdate,
  }) {
    return dbFirstUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DbFirstUpdate value)? dbFirstUpdate,
  }) {
    return dbFirstUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DbFirstUpdate value)? dbFirstUpdate,
    required TResult orElse(),
  }) {
    if (dbFirstUpdate != null) {
      return dbFirstUpdate(this);
    }
    return orElse();
  }
}

abstract class DbFirstUpdate implements CacheStrategy {
  const factory DbFirstUpdate() = _$DbFirstUpdate;
}
