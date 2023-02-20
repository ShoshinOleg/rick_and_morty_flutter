// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCharacterEvent value) started,
    required TResult Function(RefreshCharacterEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCharacterEvent value)? started,
    TResult? Function(RefreshCharacterEvent value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCharacterEvent value)? started,
    TResult Function(RefreshCharacterEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateCharacterEventCopyWith<$Res> {
  factory _$$UpdateCharacterEventCopyWith(_$UpdateCharacterEvent value,
          $Res Function(_$UpdateCharacterEvent) then) =
      __$$UpdateCharacterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCharacterEventCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$UpdateCharacterEvent>
    implements _$$UpdateCharacterEventCopyWith<$Res> {
  __$$UpdateCharacterEventCopyWithImpl(_$UpdateCharacterEvent _value,
      $Res Function(_$UpdateCharacterEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateCharacterEvent implements UpdateCharacterEvent {
  const _$UpdateCharacterEvent();

  @override
  String toString() {
    return 'CharacterEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateCharacterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCharacterEvent value) started,
    required TResult Function(RefreshCharacterEvent value) refresh,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCharacterEvent value)? started,
    TResult? Function(RefreshCharacterEvent value)? refresh,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCharacterEvent value)? started,
    TResult Function(RefreshCharacterEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class UpdateCharacterEvent implements CharacterEvent {
  const factory UpdateCharacterEvent() = _$UpdateCharacterEvent;
}

/// @nodoc
abstract class _$$RefreshCharacterEventCopyWith<$Res> {
  factory _$$RefreshCharacterEventCopyWith(_$RefreshCharacterEvent value,
          $Res Function(_$RefreshCharacterEvent) then) =
      __$$RefreshCharacterEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCharacterEventCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$RefreshCharacterEvent>
    implements _$$RefreshCharacterEventCopyWith<$Res> {
  __$$RefreshCharacterEventCopyWithImpl(_$RefreshCharacterEvent _value,
      $Res Function(_$RefreshCharacterEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshCharacterEvent implements RefreshCharacterEvent {
  const _$RefreshCharacterEvent();

  @override
  String toString() {
    return 'CharacterEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshCharacterEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateCharacterEvent value) started,
    required TResult Function(RefreshCharacterEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateCharacterEvent value)? started,
    TResult? Function(RefreshCharacterEvent value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateCharacterEvent value)? started,
    TResult Function(RefreshCharacterEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshCharacterEvent implements CharacterEvent {
  const factory RefreshCharacterEvent() = _$RefreshCharacterEvent;
}

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) preloaded,
    required TResult Function() initial,
    required TResult Function(Character? character) loading,
    required TResult Function(Character? character) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? preloaded,
    TResult? Function()? initial,
    TResult? Function(Character? character)? loading,
    TResult? Function(Character? character)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? preloaded,
    TResult Function()? initial,
    TResult Function(Character? character)? loading,
    TResult Function(Character? character)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreloadedCharacterState value) preloaded,
    required TResult Function(InitialCharacterState value) initial,
    required TResult Function(LoadingCharacterState value) loading,
    required TResult Function(LoadedCharacterState value) loaded,
    required TResult Function(ErrorCharacterState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadedCharacterState value)? preloaded,
    TResult? Function(InitialCharacterState value)? initial,
    TResult? Function(LoadingCharacterState value)? loading,
    TResult? Function(LoadedCharacterState value)? loaded,
    TResult? Function(ErrorCharacterState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadedCharacterState value)? preloaded,
    TResult Function(InitialCharacterState value)? initial,
    TResult Function(LoadingCharacterState value)? loading,
    TResult Function(LoadedCharacterState value)? loaded,
    TResult Function(ErrorCharacterState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PreloadedCharacterStateCopyWith<$Res> {
  factory _$$PreloadedCharacterStateCopyWith(_$PreloadedCharacterState value,
          $Res Function(_$PreloadedCharacterState) then) =
      __$$PreloadedCharacterStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});
}

/// @nodoc
class __$$PreloadedCharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$PreloadedCharacterState>
    implements _$$PreloadedCharacterStateCopyWith<$Res> {
  __$$PreloadedCharacterStateCopyWithImpl(_$PreloadedCharacterState _value,
      $Res Function(_$PreloadedCharacterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$PreloadedCharacterState(
      null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }
}

/// @nodoc

class _$PreloadedCharacterState implements PreloadedCharacterState {
  const _$PreloadedCharacterState(this.character);

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterState.preloaded(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreloadedCharacterState &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreloadedCharacterStateCopyWith<_$PreloadedCharacterState> get copyWith =>
      __$$PreloadedCharacterStateCopyWithImpl<_$PreloadedCharacterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) preloaded,
    required TResult Function() initial,
    required TResult Function(Character? character) loading,
    required TResult Function(Character? character) loaded,
    required TResult Function(String message) error,
  }) {
    return preloaded(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? preloaded,
    TResult? Function()? initial,
    TResult? Function(Character? character)? loading,
    TResult? Function(Character? character)? loaded,
    TResult? Function(String message)? error,
  }) {
    return preloaded?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? preloaded,
    TResult Function()? initial,
    TResult Function(Character? character)? loading,
    TResult Function(Character? character)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (preloaded != null) {
      return preloaded(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreloadedCharacterState value) preloaded,
    required TResult Function(InitialCharacterState value) initial,
    required TResult Function(LoadingCharacterState value) loading,
    required TResult Function(LoadedCharacterState value) loaded,
    required TResult Function(ErrorCharacterState value) error,
  }) {
    return preloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadedCharacterState value)? preloaded,
    TResult? Function(InitialCharacterState value)? initial,
    TResult? Function(LoadingCharacterState value)? loading,
    TResult? Function(LoadedCharacterState value)? loaded,
    TResult? Function(ErrorCharacterState value)? error,
  }) {
    return preloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadedCharacterState value)? preloaded,
    TResult Function(InitialCharacterState value)? initial,
    TResult Function(LoadingCharacterState value)? loading,
    TResult Function(LoadedCharacterState value)? loaded,
    TResult Function(ErrorCharacterState value)? error,
    required TResult orElse(),
  }) {
    if (preloaded != null) {
      return preloaded(this);
    }
    return orElse();
  }
}

abstract class PreloadedCharacterState implements CharacterState {
  const factory PreloadedCharacterState(final Character character) =
      _$PreloadedCharacterState;

  Character get character;
  @JsonKey(ignore: true)
  _$$PreloadedCharacterStateCopyWith<_$PreloadedCharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialCharacterStateCopyWith<$Res> {
  factory _$$InitialCharacterStateCopyWith(_$InitialCharacterState value,
          $Res Function(_$InitialCharacterState) then) =
      __$$InitialCharacterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$InitialCharacterState>
    implements _$$InitialCharacterStateCopyWith<$Res> {
  __$$InitialCharacterStateCopyWithImpl(_$InitialCharacterState _value,
      $Res Function(_$InitialCharacterState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialCharacterState implements InitialCharacterState {
  const _$InitialCharacterState();

  @override
  String toString() {
    return 'CharacterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCharacterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) preloaded,
    required TResult Function() initial,
    required TResult Function(Character? character) loading,
    required TResult Function(Character? character) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? preloaded,
    TResult? Function()? initial,
    TResult? Function(Character? character)? loading,
    TResult? Function(Character? character)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? preloaded,
    TResult Function()? initial,
    TResult Function(Character? character)? loading,
    TResult Function(Character? character)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreloadedCharacterState value) preloaded,
    required TResult Function(InitialCharacterState value) initial,
    required TResult Function(LoadingCharacterState value) loading,
    required TResult Function(LoadedCharacterState value) loaded,
    required TResult Function(ErrorCharacterState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadedCharacterState value)? preloaded,
    TResult? Function(InitialCharacterState value)? initial,
    TResult? Function(LoadingCharacterState value)? loading,
    TResult? Function(LoadedCharacterState value)? loaded,
    TResult? Function(ErrorCharacterState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadedCharacterState value)? preloaded,
    TResult Function(InitialCharacterState value)? initial,
    TResult Function(LoadingCharacterState value)? loading,
    TResult Function(LoadedCharacterState value)? loaded,
    TResult Function(ErrorCharacterState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialCharacterState implements CharacterState {
  const factory InitialCharacterState() = _$InitialCharacterState;
}

/// @nodoc
abstract class _$$LoadingCharacterStateCopyWith<$Res> {
  factory _$$LoadingCharacterStateCopyWith(_$LoadingCharacterState value,
          $Res Function(_$LoadingCharacterState) then) =
      __$$LoadingCharacterStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Character? character});
}

/// @nodoc
class __$$LoadingCharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$LoadingCharacterState>
    implements _$$LoadingCharacterStateCopyWith<$Res> {
  __$$LoadingCharacterStateCopyWithImpl(_$LoadingCharacterState _value,
      $Res Function(_$LoadingCharacterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_$LoadingCharacterState(
      freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

class _$LoadingCharacterState implements LoadingCharacterState {
  const _$LoadingCharacterState(this.character);

  @override
  final Character? character;

  @override
  String toString() {
    return 'CharacterState.loading(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCharacterState &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingCharacterStateCopyWith<_$LoadingCharacterState> get copyWith =>
      __$$LoadingCharacterStateCopyWithImpl<_$LoadingCharacterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) preloaded,
    required TResult Function() initial,
    required TResult Function(Character? character) loading,
    required TResult Function(Character? character) loaded,
    required TResult Function(String message) error,
  }) {
    return loading(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? preloaded,
    TResult? Function()? initial,
    TResult? Function(Character? character)? loading,
    TResult? Function(Character? character)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? preloaded,
    TResult Function()? initial,
    TResult Function(Character? character)? loading,
    TResult Function(Character? character)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreloadedCharacterState value) preloaded,
    required TResult Function(InitialCharacterState value) initial,
    required TResult Function(LoadingCharacterState value) loading,
    required TResult Function(LoadedCharacterState value) loaded,
    required TResult Function(ErrorCharacterState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadedCharacterState value)? preloaded,
    TResult? Function(InitialCharacterState value)? initial,
    TResult? Function(LoadingCharacterState value)? loading,
    TResult? Function(LoadedCharacterState value)? loaded,
    TResult? Function(ErrorCharacterState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadedCharacterState value)? preloaded,
    TResult Function(InitialCharacterState value)? initial,
    TResult Function(LoadingCharacterState value)? loading,
    TResult Function(LoadedCharacterState value)? loaded,
    TResult Function(ErrorCharacterState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCharacterState implements CharacterState {
  const factory LoadingCharacterState(final Character? character) =
      _$LoadingCharacterState;

  Character? get character;
  @JsonKey(ignore: true)
  _$$LoadingCharacterStateCopyWith<_$LoadingCharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedCharacterStateCopyWith<$Res> {
  factory _$$LoadedCharacterStateCopyWith(_$LoadedCharacterState value,
          $Res Function(_$LoadedCharacterState) then) =
      __$$LoadedCharacterStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Character? character});
}

/// @nodoc
class __$$LoadedCharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$LoadedCharacterState>
    implements _$$LoadedCharacterStateCopyWith<$Res> {
  __$$LoadedCharacterStateCopyWithImpl(_$LoadedCharacterState _value,
      $Res Function(_$LoadedCharacterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_$LoadedCharacterState(
      freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character?,
    ));
  }
}

/// @nodoc

class _$LoadedCharacterState implements LoadedCharacterState {
  const _$LoadedCharacterState(this.character);

  @override
  final Character? character;

  @override
  String toString() {
    return 'CharacterState.loaded(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCharacterState &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCharacterStateCopyWith<_$LoadedCharacterState> get copyWith =>
      __$$LoadedCharacterStateCopyWithImpl<_$LoadedCharacterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) preloaded,
    required TResult Function() initial,
    required TResult Function(Character? character) loading,
    required TResult Function(Character? character) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? preloaded,
    TResult? Function()? initial,
    TResult? Function(Character? character)? loading,
    TResult? Function(Character? character)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? preloaded,
    TResult Function()? initial,
    TResult Function(Character? character)? loading,
    TResult Function(Character? character)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreloadedCharacterState value) preloaded,
    required TResult Function(InitialCharacterState value) initial,
    required TResult Function(LoadingCharacterState value) loading,
    required TResult Function(LoadedCharacterState value) loaded,
    required TResult Function(ErrorCharacterState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadedCharacterState value)? preloaded,
    TResult? Function(InitialCharacterState value)? initial,
    TResult? Function(LoadingCharacterState value)? loading,
    TResult? Function(LoadedCharacterState value)? loaded,
    TResult? Function(ErrorCharacterState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadedCharacterState value)? preloaded,
    TResult Function(InitialCharacterState value)? initial,
    TResult Function(LoadingCharacterState value)? loading,
    TResult Function(LoadedCharacterState value)? loaded,
    TResult Function(ErrorCharacterState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCharacterState implements CharacterState {
  const factory LoadedCharacterState(final Character? character) =
      _$LoadedCharacterState;

  Character? get character;
  @JsonKey(ignore: true)
  _$$LoadedCharacterStateCopyWith<_$LoadedCharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCharacterStateCopyWith<$Res> {
  factory _$$ErrorCharacterStateCopyWith(_$ErrorCharacterState value,
          $Res Function(_$ErrorCharacterState) then) =
      __$$ErrorCharacterStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$ErrorCharacterState>
    implements _$$ErrorCharacterStateCopyWith<$Res> {
  __$$ErrorCharacterStateCopyWithImpl(
      _$ErrorCharacterState _value, $Res Function(_$ErrorCharacterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorCharacterState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCharacterState implements ErrorCharacterState {
  const _$ErrorCharacterState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CharacterState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCharacterState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCharacterStateCopyWith<_$ErrorCharacterState> get copyWith =>
      __$$ErrorCharacterStateCopyWithImpl<_$ErrorCharacterState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) preloaded,
    required TResult Function() initial,
    required TResult Function(Character? character) loading,
    required TResult Function(Character? character) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Character character)? preloaded,
    TResult? Function()? initial,
    TResult? Function(Character? character)? loading,
    TResult? Function(Character? character)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? preloaded,
    TResult Function()? initial,
    TResult Function(Character? character)? loading,
    TResult Function(Character? character)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreloadedCharacterState value) preloaded,
    required TResult Function(InitialCharacterState value) initial,
    required TResult Function(LoadingCharacterState value) loading,
    required TResult Function(LoadedCharacterState value) loaded,
    required TResult Function(ErrorCharacterState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreloadedCharacterState value)? preloaded,
    TResult? Function(InitialCharacterState value)? initial,
    TResult? Function(LoadingCharacterState value)? loading,
    TResult? Function(LoadedCharacterState value)? loaded,
    TResult? Function(ErrorCharacterState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreloadedCharacterState value)? preloaded,
    TResult Function(InitialCharacterState value)? initial,
    TResult Function(LoadingCharacterState value)? loading,
    TResult Function(LoadedCharacterState value)? loaded,
    TResult Function(ErrorCharacterState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCharacterState implements CharacterState {
  const factory ErrorCharacterState(final String message) =
      _$ErrorCharacterState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCharacterStateCopyWith<_$ErrorCharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}
