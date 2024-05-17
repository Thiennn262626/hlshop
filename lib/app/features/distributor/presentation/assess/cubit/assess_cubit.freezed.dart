// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assess_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssessState {
  ApiStatus get status => throw _privateConstructorUsedError;
  AssessEntity? get assess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssessStateCopyWith<AssessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessStateCopyWith<$Res> {
  factory $AssessStateCopyWith(
          AssessState value, $Res Function(AssessState) then) =
      _$AssessStateCopyWithImpl<$Res, AssessState>;
  @useResult
  $Res call({ApiStatus status, AssessEntity? assess});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AssessStateCopyWithImpl<$Res, $Val extends AssessState>
    implements $AssessStateCopyWith<$Res> {
  _$AssessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? assess = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      assess: freezed == assess
          ? _value.assess
          : assess // ignore: cast_nullable_to_non_nullable
              as AssessEntity?,
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
abstract class _$$AssessStateImplCopyWith<$Res>
    implements $AssessStateCopyWith<$Res> {
  factory _$$AssessStateImplCopyWith(
          _$AssessStateImpl value, $Res Function(_$AssessStateImpl) then) =
      __$$AssessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, AssessEntity? assess});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$AssessStateImplCopyWithImpl<$Res>
    extends _$AssessStateCopyWithImpl<$Res, _$AssessStateImpl>
    implements _$$AssessStateImplCopyWith<$Res> {
  __$$AssessStateImplCopyWithImpl(
      _$AssessStateImpl _value, $Res Function(_$AssessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? assess = freezed,
  }) {
    return _then(_$AssessStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      assess: freezed == assess
          ? _value.assess
          : assess // ignore: cast_nullable_to_non_nullable
              as AssessEntity?,
    ));
  }
}

/// @nodoc

class _$AssessStateImpl extends _AssessState with DiagnosticableTreeMixin {
  const _$AssessStateImpl(
      {this.status = const ApiStatus.initial(), this.assess = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final AssessEntity? assess;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AssessState(status: $status, assess: $assess)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AssessState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('assess', assess));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.assess, assess) || other.assess == assess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, assess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessStateImplCopyWith<_$AssessStateImpl> get copyWith =>
      __$$AssessStateImplCopyWithImpl<_$AssessStateImpl>(this, _$identity);
}

abstract class _AssessState extends AssessState {
  const factory _AssessState(
      {final ApiStatus status, final AssessEntity? assess}) = _$AssessStateImpl;
  const _AssessState._() : super._();

  @override
  ApiStatus get status;
  @override
  AssessEntity? get assess;
  @override
  @JsonKey(ignore: true)
  _$$AssessStateImplCopyWith<_$AssessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
