// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(String userName)? updateUserName,
    TResult Function(File file)? updateCover,
    TResult Function(File file)? updateAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialEvent value) initial,
    required TResult Function(_UserFetchEvent value) fetch,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult Function(_UserUpdateCoverEvent value)? updateCover,
    TResult Function(_UserUpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserInitialEventCopyWith<$Res> {
  factory _$$_UserInitialEventCopyWith(
          _$_UserInitialEvent value, $Res Function(_$_UserInitialEvent) then) =
      __$$_UserInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInitialEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserInitialEvent>
    implements _$$_UserInitialEventCopyWith<$Res> {
  __$$_UserInitialEventCopyWithImpl(
      _$_UserInitialEvent _value, $Res Function(_$_UserInitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserInitialEvent extends _UserInitialEvent
    with DiagnosticableTreeMixin {
  const _$_UserInitialEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(String userName)? updateUserName,
    TResult Function(File file)? updateCover,
    TResult Function(File file)? updateAvatar,
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
    required TResult Function(_UserInitialEvent value) initial,
    required TResult Function(_UserFetchEvent value) fetch,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult Function(_UserUpdateCoverEvent value)? updateCover,
    TResult Function(_UserUpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserInitialEvent extends UserEvent {
  const factory _UserInitialEvent() = _$_UserInitialEvent;
  const _UserInitialEvent._() : super._();
}

/// @nodoc
abstract class _$$_UserFetchEventCopyWith<$Res> {
  factory _$$_UserFetchEventCopyWith(
          _$_UserFetchEvent value, $Res Function(_$_UserFetchEvent) then) =
      __$$_UserFetchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserFetchEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserFetchEvent>
    implements _$$_UserFetchEventCopyWith<$Res> {
  __$$_UserFetchEventCopyWithImpl(
      _$_UserFetchEvent _value, $Res Function(_$_UserFetchEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserFetchEvent extends _UserFetchEvent with DiagnosticableTreeMixin {
  const _$_UserFetchEvent() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserFetchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(String userName)? updateUserName,
    TResult Function(File file)? updateCover,
    TResult Function(File file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialEvent value) initial,
    required TResult Function(_UserFetchEvent value) fetch,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult Function(_UserUpdateCoverEvent value)? updateCover,
    TResult Function(_UserUpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _UserFetchEvent extends UserEvent {
  const factory _UserFetchEvent() = _$_UserFetchEvent;
  const _UserFetchEvent._() : super._();
}

/// @nodoc
abstract class _$$_UserUpdateUserNameEventCopyWith<$Res> {
  factory _$$_UserUpdateUserNameEventCopyWith(_$_UserUpdateUserNameEvent value,
          $Res Function(_$_UserUpdateUserNameEvent) then) =
      __$$_UserUpdateUserNameEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$_UserUpdateUserNameEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserUpdateUserNameEvent>
    implements _$$_UserUpdateUserNameEventCopyWith<$Res> {
  __$$_UserUpdateUserNameEventCopyWithImpl(_$_UserUpdateUserNameEvent _value,
      $Res Function(_$_UserUpdateUserNameEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$_UserUpdateUserNameEvent(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserUpdateUserNameEvent extends _UserUpdateUserNameEvent
    with DiagnosticableTreeMixin {
  const _$_UserUpdateUserNameEvent({required this.userName}) : super._();

  @override
  final String userName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateUserName(userName: $userName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateUserName'))
      ..add(DiagnosticsProperty('userName', userName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUpdateUserNameEvent &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserUpdateUserNameEventCopyWith<_$_UserUpdateUserNameEvent>
      get copyWith =>
          __$$_UserUpdateUserNameEventCopyWithImpl<_$_UserUpdateUserNameEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) {
    return updateUserName(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) {
    return updateUserName?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(String userName)? updateUserName,
    TResult Function(File file)? updateCover,
    TResult Function(File file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateUserName != null) {
      return updateUserName(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialEvent value) initial,
    required TResult Function(_UserFetchEvent value) fetch,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) {
    return updateUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) {
    return updateUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult Function(_UserUpdateCoverEvent value)? updateCover,
    TResult Function(_UserUpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateUserName != null) {
      return updateUserName(this);
    }
    return orElse();
  }
}

abstract class _UserUpdateUserNameEvent extends UserEvent {
  const factory _UserUpdateUserNameEvent({required final String userName}) =
      _$_UserUpdateUserNameEvent;
  const _UserUpdateUserNameEvent._() : super._();

  String get userName;
  @JsonKey(ignore: true)
  _$$_UserUpdateUserNameEventCopyWith<_$_UserUpdateUserNameEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserUpdateCoverEventCopyWith<$Res> {
  factory _$$_UserUpdateCoverEventCopyWith(_$_UserUpdateCoverEvent value,
          $Res Function(_$_UserUpdateCoverEvent) then) =
      __$$_UserUpdateCoverEventCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$_UserUpdateCoverEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserUpdateCoverEvent>
    implements _$$_UserUpdateCoverEventCopyWith<$Res> {
  __$$_UserUpdateCoverEventCopyWithImpl(_$_UserUpdateCoverEvent _value,
      $Res Function(_$_UserUpdateCoverEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$_UserUpdateCoverEvent(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UserUpdateCoverEvent extends _UserUpdateCoverEvent
    with DiagnosticableTreeMixin {
  const _$_UserUpdateCoverEvent({required this.file}) : super._();

  @override
  final File file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateCover(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateCover'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUpdateCoverEvent &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserUpdateCoverEventCopyWith<_$_UserUpdateCoverEvent> get copyWith =>
      __$$_UserUpdateCoverEventCopyWithImpl<_$_UserUpdateCoverEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) {
    return updateCover(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) {
    return updateCover?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(String userName)? updateUserName,
    TResult Function(File file)? updateCover,
    TResult Function(File file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateCover != null) {
      return updateCover(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialEvent value) initial,
    required TResult Function(_UserFetchEvent value) fetch,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) {
    return updateCover(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) {
    return updateCover?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult Function(_UserUpdateCoverEvent value)? updateCover,
    TResult Function(_UserUpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateCover != null) {
      return updateCover(this);
    }
    return orElse();
  }
}

abstract class _UserUpdateCoverEvent extends UserEvent {
  const factory _UserUpdateCoverEvent({required final File file}) =
      _$_UserUpdateCoverEvent;
  const _UserUpdateCoverEvent._() : super._();

  File get file;
  @JsonKey(ignore: true)
  _$$_UserUpdateCoverEventCopyWith<_$_UserUpdateCoverEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserUpdateAvatarEventCopyWith<$Res> {
  factory _$$_UserUpdateAvatarEventCopyWith(_$_UserUpdateAvatarEvent value,
          $Res Function(_$_UserUpdateAvatarEvent) then) =
      __$$_UserUpdateAvatarEventCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$_UserUpdateAvatarEventCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_UserUpdateAvatarEvent>
    implements _$$_UserUpdateAvatarEventCopyWith<$Res> {
  __$$_UserUpdateAvatarEventCopyWithImpl(_$_UserUpdateAvatarEvent _value,
      $Res Function(_$_UserUpdateAvatarEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$_UserUpdateAvatarEvent(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UserUpdateAvatarEvent extends _UserUpdateAvatarEvent
    with DiagnosticableTreeMixin {
  const _$_UserUpdateAvatarEvent({required this.file}) : super._();

  @override
  final File file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.updateAvatar(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserEvent.updateAvatar'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserUpdateAvatarEvent &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserUpdateAvatarEventCopyWith<_$_UserUpdateAvatarEvent> get copyWith =>
      __$$_UserUpdateAvatarEventCopyWithImpl<_$_UserUpdateAvatarEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) {
    return updateAvatar(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) {
    return updateAvatar?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function(String userName)? updateUserName,
    TResult Function(File file)? updateCover,
    TResult Function(File file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialEvent value) initial,
    required TResult Function(_UserFetchEvent value) fetch,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) {
    return updateAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) {
    return updateAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult Function(_UserUpdateCoverEvent value)? updateCover,
    TResult Function(_UserUpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(this);
    }
    return orElse();
  }
}

abstract class _UserUpdateAvatarEvent extends UserEvent {
  const factory _UserUpdateAvatarEvent({required final File file}) =
      _$_UserUpdateAvatarEvent;
  const _UserUpdateAvatarEvent._() : super._();

  File get file;
  @JsonKey(ignore: true)
  _$$_UserUpdateAvatarEventCopyWith<_$_UserUpdateAvatarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  ApiStatus get status => throw _privateConstructorUsedError;
  ApiStatus get updateStatus => throw _privateConstructorUsedError;
  UserEntity? get userEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({ApiStatus status, ApiStatus updateStatus, UserEntity? userEntity});

  $ApiStatusCopyWith<$Res> get status;
  $ApiStatusCopyWith<$Res> get updateStatus;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updateStatus = null,
    Object? userEntity = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userEntity: freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get status {
    return $ApiStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get updateStatus {
    return $ApiStatusCopyWith<$Res>(_value.updateStatus, (value) {
      return _then(_value.copyWith(updateStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, ApiStatus updateStatus, UserEntity? userEntity});

  @override
  $ApiStatusCopyWith<$Res> get status;
  @override
  $ApiStatusCopyWith<$Res> get updateStatus;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updateStatus = null,
    Object? userEntity = freezed,
  }) {
    return _then(_$_UserState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userEntity: freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class _$_UserState extends _UserState with DiagnosticableTreeMixin {
  const _$_UserState(
      {this.status = const ApiStatus.initial(),
      this.updateStatus = const ApiStatus.initial(),
      this.userEntity = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final ApiStatus updateStatus;
  @override
  @JsonKey()
  final UserEntity? userEntity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(status: $status, updateStatus: $updateStatus, userEntity: $userEntity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('updateStatus', updateStatus))
      ..add(DiagnosticsProperty('userEntity', userEntity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, updateStatus, userEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState extends UserState {
  const factory _UserState(
      {final ApiStatus status,
      final ApiStatus updateStatus,
      final UserEntity? userEntity}) = _$_UserState;
  const _UserState._() : super._();

  @override
  ApiStatus get status;
  @override
  ApiStatus get updateStatus;
  @override
  UserEntity? get userEntity;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
