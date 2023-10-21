// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAccountState {
  ApiStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAccountStateCopyWith<UserAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountStateCopyWith<$Res> {
  factory $UserAccountStateCopyWith(
          UserAccountState value, $Res Function(UserAccountState) then) =
      _$UserAccountStateCopyWithImpl<$Res, UserAccountState>;
  @useResult
  $Res call({ApiStatus status});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UserAccountStateCopyWithImpl<$Res, $Val extends UserAccountState>
    implements $UserAccountStateCopyWith<$Res> {
  _$UserAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get status {
    return $ApiStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAccountStateImplCopyWith<$Res>
    implements $UserAccountStateCopyWith<$Res> {
  factory _$$UserAccountStateImplCopyWith(_$UserAccountStateImpl value,
          $Res Function(_$UserAccountStateImpl) then) =
      __$$UserAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UserAccountStateImplCopyWithImpl<$Res>
    extends _$UserAccountStateCopyWithImpl<$Res, _$UserAccountStateImpl>
    implements _$$UserAccountStateImplCopyWith<$Res> {
  __$$UserAccountStateImplCopyWithImpl(_$UserAccountStateImpl _value,
      $Res Function(_$UserAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$UserAccountStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
    ));
  }
}

/// @nodoc

class _$UserAccountStateImpl extends _UserAccountState
    with DiagnosticableTreeMixin {
  const _$UserAccountStateImpl({this.status = const ApiStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserAccountState(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserAccountState'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccountStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccountStateImplCopyWith<_$UserAccountStateImpl> get copyWith =>
      __$$UserAccountStateImplCopyWithImpl<_$UserAccountStateImpl>(
          this, _$identity);
}

abstract class _UserAccountState extends UserAccountState {
  const factory _UserAccountState({final ApiStatus status}) =
      _$UserAccountStateImpl;
  const _UserAccountState._() : super._();

  @override
  ApiStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$UserAccountStateImplCopyWith<_$UserAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
