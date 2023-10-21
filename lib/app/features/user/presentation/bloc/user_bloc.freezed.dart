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
    required TResult Function() clear,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function()? clear,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function()? clear,
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
    required TResult Function(_UserClearEvent value) clear,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserClearEvent value)? clear,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserClearEvent value)? clear,
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
abstract class _$$UserInitialEventImplCopyWith<$Res> {
  factory _$$UserInitialEventImplCopyWith(_$UserInitialEventImpl value,
          $Res Function(_$UserInitialEventImpl) then) =
      __$$UserInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserInitialEventImpl>
    implements _$$UserInitialEventImplCopyWith<$Res> {
  __$$UserInitialEventImplCopyWithImpl(_$UserInitialEventImpl _value,
      $Res Function(_$UserInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInitialEventImpl extends _UserInitialEvent
    with DiagnosticableTreeMixin {
  const _$UserInitialEventImpl() : super._();

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
        (other.runtimeType == runtimeType && other is _$UserInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function() clear,
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
    TResult? Function()? clear,
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
    TResult Function()? clear,
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
    required TResult Function(_UserClearEvent value) clear,
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
    TResult? Function(_UserClearEvent value)? clear,
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
    TResult Function(_UserClearEvent value)? clear,
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
  const factory _UserInitialEvent() = _$UserInitialEventImpl;
  const _UserInitialEvent._() : super._();
}

/// @nodoc
abstract class _$$UserFetchEventImplCopyWith<$Res> {
  factory _$$UserFetchEventImplCopyWith(_$UserFetchEventImpl value,
          $Res Function(_$UserFetchEventImpl) then) =
      __$$UserFetchEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserFetchEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserFetchEventImpl>
    implements _$$UserFetchEventImplCopyWith<$Res> {
  __$$UserFetchEventImplCopyWithImpl(
      _$UserFetchEventImpl _value, $Res Function(_$UserFetchEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserFetchEventImpl extends _UserFetchEvent
    with DiagnosticableTreeMixin {
  const _$UserFetchEventImpl() : super._();

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
        (other.runtimeType == runtimeType && other is _$UserFetchEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function() clear,
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
    TResult? Function()? clear,
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
    TResult Function()? clear,
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
    required TResult Function(_UserClearEvent value) clear,
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
    TResult? Function(_UserClearEvent value)? clear,
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
    TResult Function(_UserClearEvent value)? clear,
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
  const factory _UserFetchEvent() = _$UserFetchEventImpl;
  const _UserFetchEvent._() : super._();
}

/// @nodoc
abstract class _$$UserClearEventImplCopyWith<$Res> {
  factory _$$UserClearEventImplCopyWith(_$UserClearEventImpl value,
          $Res Function(_$UserClearEventImpl) then) =
      __$$UserClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserClearEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserClearEventImpl>
    implements _$$UserClearEventImplCopyWith<$Res> {
  __$$UserClearEventImplCopyWithImpl(
      _$UserClearEventImpl _value, $Res Function(_$UserClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserClearEventImpl extends _UserClearEvent
    with DiagnosticableTreeMixin {
  const _$UserClearEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserEvent.clear()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserEvent.clear'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function() clear,
    required TResult Function(String userName) updateUserName,
    required TResult Function(File file) updateCover,
    required TResult Function(File file) updateAvatar,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetch,
    TResult? Function()? clear,
    TResult? Function(String userName)? updateUserName,
    TResult? Function(File file)? updateCover,
    TResult? Function(File file)? updateAvatar,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetch,
    TResult Function()? clear,
    TResult Function(String userName)? updateUserName,
    TResult Function(File file)? updateCover,
    TResult Function(File file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialEvent value) initial,
    required TResult Function(_UserFetchEvent value) fetch,
    required TResult Function(_UserClearEvent value) clear,
    required TResult Function(_UserUpdateUserNameEvent value) updateUserName,
    required TResult Function(_UserUpdateCoverEvent value) updateCover,
    required TResult Function(_UserUpdateAvatarEvent value) updateAvatar,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserInitialEvent value)? initial,
    TResult? Function(_UserFetchEvent value)? fetch,
    TResult? Function(_UserClearEvent value)? clear,
    TResult? Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult? Function(_UserUpdateCoverEvent value)? updateCover,
    TResult? Function(_UserUpdateAvatarEvent value)? updateAvatar,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialEvent value)? initial,
    TResult Function(_UserFetchEvent value)? fetch,
    TResult Function(_UserClearEvent value)? clear,
    TResult Function(_UserUpdateUserNameEvent value)? updateUserName,
    TResult Function(_UserUpdateCoverEvent value)? updateCover,
    TResult Function(_UserUpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _UserClearEvent extends UserEvent {
  const factory _UserClearEvent() = _$UserClearEventImpl;
  const _UserClearEvent._() : super._();
}

/// @nodoc
abstract class _$$UserUpdateUserNameEventImplCopyWith<$Res> {
  factory _$$UserUpdateUserNameEventImplCopyWith(
          _$UserUpdateUserNameEventImpl value,
          $Res Function(_$UserUpdateUserNameEventImpl) then) =
      __$$UserUpdateUserNameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$UserUpdateUserNameEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateUserNameEventImpl>
    implements _$$UserUpdateUserNameEventImplCopyWith<$Res> {
  __$$UserUpdateUserNameEventImplCopyWithImpl(
      _$UserUpdateUserNameEventImpl _value,
      $Res Function(_$UserUpdateUserNameEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$UserUpdateUserNameEventImpl(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserUpdateUserNameEventImpl extends _UserUpdateUserNameEvent
    with DiagnosticableTreeMixin {
  const _$UserUpdateUserNameEventImpl({required this.userName}) : super._();

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
            other is _$UserUpdateUserNameEventImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateUserNameEventImplCopyWith<_$UserUpdateUserNameEventImpl>
      get copyWith => __$$UserUpdateUserNameEventImplCopyWithImpl<
          _$UserUpdateUserNameEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function() clear,
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
    TResult? Function()? clear,
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
    TResult Function()? clear,
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
    required TResult Function(_UserClearEvent value) clear,
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
    TResult? Function(_UserClearEvent value)? clear,
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
    TResult Function(_UserClearEvent value)? clear,
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
      _$UserUpdateUserNameEventImpl;
  const _UserUpdateUserNameEvent._() : super._();

  String get userName;
  @JsonKey(ignore: true)
  _$$UserUpdateUserNameEventImplCopyWith<_$UserUpdateUserNameEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdateCoverEventImplCopyWith<$Res> {
  factory _$$UserUpdateCoverEventImplCopyWith(_$UserUpdateCoverEventImpl value,
          $Res Function(_$UserUpdateCoverEventImpl) then) =
      __$$UserUpdateCoverEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$UserUpdateCoverEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateCoverEventImpl>
    implements _$$UserUpdateCoverEventImplCopyWith<$Res> {
  __$$UserUpdateCoverEventImplCopyWithImpl(_$UserUpdateCoverEventImpl _value,
      $Res Function(_$UserUpdateCoverEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$UserUpdateCoverEventImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UserUpdateCoverEventImpl extends _UserUpdateCoverEvent
    with DiagnosticableTreeMixin {
  const _$UserUpdateCoverEventImpl({required this.file}) : super._();

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
            other is _$UserUpdateCoverEventImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateCoverEventImplCopyWith<_$UserUpdateCoverEventImpl>
      get copyWith =>
          __$$UserUpdateCoverEventImplCopyWithImpl<_$UserUpdateCoverEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function() clear,
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
    TResult? Function()? clear,
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
    TResult Function()? clear,
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
    required TResult Function(_UserClearEvent value) clear,
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
    TResult? Function(_UserClearEvent value)? clear,
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
    TResult Function(_UserClearEvent value)? clear,
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
      _$UserUpdateCoverEventImpl;
  const _UserUpdateCoverEvent._() : super._();

  File get file;
  @JsonKey(ignore: true)
  _$$UserUpdateCoverEventImplCopyWith<_$UserUpdateCoverEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserUpdateAvatarEventImplCopyWith<$Res> {
  factory _$$UserUpdateAvatarEventImplCopyWith(
          _$UserUpdateAvatarEventImpl value,
          $Res Function(_$UserUpdateAvatarEventImpl) then) =
      __$$UserUpdateAvatarEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$UserUpdateAvatarEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserUpdateAvatarEventImpl>
    implements _$$UserUpdateAvatarEventImplCopyWith<$Res> {
  __$$UserUpdateAvatarEventImplCopyWithImpl(_$UserUpdateAvatarEventImpl _value,
      $Res Function(_$UserUpdateAvatarEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$UserUpdateAvatarEventImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UserUpdateAvatarEventImpl extends _UserUpdateAvatarEvent
    with DiagnosticableTreeMixin {
  const _$UserUpdateAvatarEventImpl({required this.file}) : super._();

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
            other is _$UserUpdateAvatarEventImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateAvatarEventImplCopyWith<_$UserUpdateAvatarEventImpl>
      get copyWith => __$$UserUpdateAvatarEventImplCopyWithImpl<
          _$UserUpdateAvatarEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetch,
    required TResult Function() clear,
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
    TResult? Function()? clear,
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
    TResult Function()? clear,
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
    required TResult Function(_UserClearEvent value) clear,
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
    TResult? Function(_UserClearEvent value)? clear,
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
    TResult Function(_UserClearEvent value)? clear,
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
      _$UserUpdateAvatarEventImpl;
  const _UserUpdateAvatarEvent._() : super._();

  File get file;
  @JsonKey(ignore: true)
  _$$UserUpdateAvatarEventImplCopyWith<_$UserUpdateAvatarEventImpl>
      get copyWith => throw _privateConstructorUsedError;
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
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, ApiStatus updateStatus, UserEntity? userEntity});

  @override
  $ApiStatusCopyWith<$Res> get status;
  @override
  $ApiStatusCopyWith<$Res> get updateStatus;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? updateStatus = null,
    Object? userEntity = freezed,
  }) {
    return _then(_$UserStateImpl(
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

class _$UserStateImpl extends _UserState with DiagnosticableTreeMixin {
  const _$UserStateImpl(
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
            other is _$UserStateImpl &&
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
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState extends UserState {
  const factory _UserState(
      {final ApiStatus status,
      final ApiStatus updateStatus,
      final UserEntity? userEntity}) = _$UserStateImpl;
  const _UserState._() : super._();

  @override
  ApiStatus get status;
  @override
  ApiStatus get updateStatus;
  @override
  UserEntity? get userEntity;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
