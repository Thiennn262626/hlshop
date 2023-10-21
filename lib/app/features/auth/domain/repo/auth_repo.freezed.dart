// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_repo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDetermined,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notDetermined,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDetermined,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDetermined value) notDetermined,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotDetermined value)? notDetermined,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDetermined value)? notDetermined,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStatusCopyWith<$Res> {
  factory $AuthenticationStatusCopyWith(AuthenticationStatus value,
          $Res Function(AuthenticationStatus) then) =
      _$AuthenticationStatusCopyWithImpl<$Res, AuthenticationStatus>;
}

/// @nodoc
class _$AuthenticationStatusCopyWithImpl<$Res,
        $Val extends AuthenticationStatus>
    implements $AuthenticationStatusCopyWith<$Res> {
  _$AuthenticationStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotDeterminedImplCopyWith<$Res> {
  factory _$$NotDeterminedImplCopyWith(
          _$NotDeterminedImpl value, $Res Function(_$NotDeterminedImpl) then) =
      __$$NotDeterminedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotDeterminedImplCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res, _$NotDeterminedImpl>
    implements _$$NotDeterminedImplCopyWith<$Res> {
  __$$NotDeterminedImplCopyWithImpl(
      _$NotDeterminedImpl _value, $Res Function(_$NotDeterminedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotDeterminedImpl
    with DiagnosticableTreeMixin
    implements _NotDetermined {
  const _$NotDeterminedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationStatus.notDetermined()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthenticationStatus.notDetermined'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotDeterminedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDetermined,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return notDetermined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notDetermined,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return notDetermined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDetermined,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notDetermined != null) {
      return notDetermined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDetermined value) notDetermined,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return notDetermined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotDetermined value)? notDetermined,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return notDetermined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDetermined value)? notDetermined,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notDetermined != null) {
      return notDetermined(this);
    }
    return orElse();
  }
}

abstract class _NotDetermined implements AuthenticationStatus {
  const factory _NotDetermined() = _$NotDeterminedImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl
    with DiagnosticableTreeMixin
    implements _Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationStatus.authenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthenticationStatus.authenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDetermined,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notDetermined,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDetermined,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDetermined value) notDetermined,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotDetermined value)? notDetermined,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDetermined value)? notDetermined,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationStatus {
  const factory _Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$NotAuthenticatedImplCopyWith<$Res> {
  factory _$$NotAuthenticatedImplCopyWith(_$NotAuthenticatedImpl value,
          $Res Function(_$NotAuthenticatedImpl) then) =
      __$$NotAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStatusCopyWithImpl<$Res, _$NotAuthenticatedImpl>
    implements _$$NotAuthenticatedImplCopyWith<$Res> {
  __$$NotAuthenticatedImplCopyWithImpl(_$NotAuthenticatedImpl _value,
      $Res Function(_$NotAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotAuthenticatedImpl
    with DiagnosticableTreeMixin
    implements _NotAuthenticated {
  const _$NotAuthenticatedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationStatus.notAuthenticated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'AuthenticationStatus.notAuthenticated'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notDetermined,
    required TResult Function() authenticated,
    required TResult Function() notAuthenticated,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notDetermined,
    TResult? Function()? authenticated,
    TResult? Function()? notAuthenticated,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notDetermined,
    TResult Function()? authenticated,
    TResult Function()? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotDetermined value) notDetermined,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotDetermined value)? notDetermined,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotDetermined value)? notDetermined,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements AuthenticationStatus {
  const factory _NotAuthenticated() = _$NotAuthenticatedImpl;
}
