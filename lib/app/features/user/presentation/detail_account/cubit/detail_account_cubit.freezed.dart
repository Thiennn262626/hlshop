// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailAccountState {
  ApiStatus get status => throw _privateConstructorUsedError;
  UserEntity? get userEntity => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailAccountStateCopyWith<DetailAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAccountStateCopyWith<$Res> {
  factory $DetailAccountStateCopyWith(
          DetailAccountState value, $Res Function(DetailAccountState) then) =
      _$DetailAccountStateCopyWithImpl<$Res, DetailAccountState>;
  @useResult
  $Res call({ApiStatus status, UserEntity? userEntity, String? name});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$DetailAccountStateCopyWithImpl<$Res, $Val extends DetailAccountState>
    implements $DetailAccountStateCopyWith<$Res> {
  _$DetailAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userEntity = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userEntity: freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_DetailAccountStateCopyWith<$Res>
    implements $DetailAccountStateCopyWith<$Res> {
  factory _$$_DetailAccountStateCopyWith(_$_DetailAccountState value,
          $Res Function(_$_DetailAccountState) then) =
      __$$_DetailAccountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, UserEntity? userEntity, String? name});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_DetailAccountStateCopyWithImpl<$Res>
    extends _$DetailAccountStateCopyWithImpl<$Res, _$_DetailAccountState>
    implements _$$_DetailAccountStateCopyWith<$Res> {
  __$$_DetailAccountStateCopyWithImpl(
      _$_DetailAccountState _value, $Res Function(_$_DetailAccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userEntity = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DetailAccountState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userEntity: freezed == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_DetailAccountState extends _DetailAccountState
    with DiagnosticableTreeMixin {
  const _$_DetailAccountState(
      {this.status = const ApiStatus.initial(),
      this.userEntity = null,
      this.name = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final UserEntity? userEntity;
  @override
  @JsonKey()
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailAccountState(status: $status, userEntity: $userEntity, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailAccountState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('userEntity', userEntity))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailAccountState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, userEntity, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailAccountStateCopyWith<_$_DetailAccountState> get copyWith =>
      __$$_DetailAccountStateCopyWithImpl<_$_DetailAccountState>(
          this, _$identity);
}

abstract class _DetailAccountState extends DetailAccountState {
  const factory _DetailAccountState(
      {final ApiStatus status,
      final UserEntity? userEntity,
      final String? name}) = _$_DetailAccountState;
  const _DetailAccountState._() : super._();

  @override
  ApiStatus get status;
  @override
  UserEntity? get userEntity;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_DetailAccountStateCopyWith<_$_DetailAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
