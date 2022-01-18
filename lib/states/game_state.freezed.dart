// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

  Start start() {
    return const Start();
  }

  Won won() {
    return const Won();
  }

  Lost lost() {
    return const Lost();
  }
}

/// @nodoc
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() won,
    required TResult Function() lost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(Won value) won,
    required TResult Function(Lost value) lost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;
}

/// @nodoc
abstract class $StartCopyWith<$Res> {
  factory $StartCopyWith(Start value, $Res Function(Start) then) =
      _$StartCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $StartCopyWith<$Res> {
  _$StartCopyWithImpl(Start _value, $Res Function(Start) _then)
      : super(_value, (v) => _then(v as Start));

  @override
  Start get _value => super._value as Start;
}

/// @nodoc

class _$Start implements Start {
  const _$Start();

  @override
  String toString() {
    return 'GameState.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Start);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() won,
    required TResult Function() lost,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(Won value) won,
    required TResult Function(Lost value) lost,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class Start implements GameState {
  const factory Start() = _$Start;
}

/// @nodoc
abstract class $WonCopyWith<$Res> {
  factory $WonCopyWith(Won value, $Res Function(Won) then) =
      _$WonCopyWithImpl<$Res>;
}

/// @nodoc
class _$WonCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $WonCopyWith<$Res> {
  _$WonCopyWithImpl(Won _value, $Res Function(Won) _then)
      : super(_value, (v) => _then(v as Won));

  @override
  Won get _value => super._value as Won;
}

/// @nodoc

class _$Won implements Won {
  const _$Won();

  @override
  String toString() {
    return 'GameState.won()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Won);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() won,
    required TResult Function() lost,
  }) {
    return won();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
  }) {
    return won?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
    required TResult orElse(),
  }) {
    if (won != null) {
      return won();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(Won value) won,
    required TResult Function(Lost value) lost,
  }) {
    return won(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
  }) {
    return won?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
    required TResult orElse(),
  }) {
    if (won != null) {
      return won(this);
    }
    return orElse();
  }
}

abstract class Won implements GameState {
  const factory Won() = _$Won;
}

/// @nodoc
abstract class $LostCopyWith<$Res> {
  factory $LostCopyWith(Lost value, $Res Function(Lost) then) =
      _$LostCopyWithImpl<$Res>;
}

/// @nodoc
class _$LostCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements $LostCopyWith<$Res> {
  _$LostCopyWithImpl(Lost _value, $Res Function(Lost) _then)
      : super(_value, (v) => _then(v as Lost));

  @override
  Lost get _value => super._value as Lost;
}

/// @nodoc

class _$Lost implements Lost {
  const _$Lost();

  @override
  String toString() {
    return 'GameState.lost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Lost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() won,
    required TResult Function() lost,
  }) {
    return lost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
  }) {
    return lost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? won,
    TResult Function()? lost,
    required TResult orElse(),
  }) {
    if (lost != null) {
      return lost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Start value) start,
    required TResult Function(Won value) won,
    required TResult Function(Lost value) lost,
  }) {
    return lost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
  }) {
    return lost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Start value)? start,
    TResult Function(Won value)? won,
    TResult Function(Lost value)? lost,
    required TResult orElse(),
  }) {
    if (lost != null) {
      return lost(this);
    }
    return orElse();
  }
}

abstract class Lost implements GameState {
  const factory Lost() = _$Lost;
}
