// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CrudCreditCardState {
  ApiStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrudCreditCardStateCopyWith<CrudCreditCardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudCreditCardStateCopyWith<$Res> {
  factory $CrudCreditCardStateCopyWith(
          CrudCreditCardState value, $Res Function(CrudCreditCardState) then) =
      _$CrudCreditCardStateCopyWithImpl<$Res, CrudCreditCardState>;
  @useResult
  $Res call({ApiStatus status});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$CrudCreditCardStateCopyWithImpl<$Res, $Val extends CrudCreditCardState>
    implements $CrudCreditCardStateCopyWith<$Res> {
  _$CrudCreditCardStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_CrudCreditCardStateCopyWith<$Res>
    implements $CrudCreditCardStateCopyWith<$Res> {
  factory _$$_CrudCreditCardStateCopyWith(_$_CrudCreditCardState value,
          $Res Function(_$_CrudCreditCardState) then) =
      __$$_CrudCreditCardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_CrudCreditCardStateCopyWithImpl<$Res>
    extends _$CrudCreditCardStateCopyWithImpl<$Res, _$_CrudCreditCardState>
    implements _$$_CrudCreditCardStateCopyWith<$Res> {
  __$$_CrudCreditCardStateCopyWithImpl(_$_CrudCreditCardState _value,
      $Res Function(_$_CrudCreditCardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_CrudCreditCardState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
    ));
  }
}

/// @nodoc

class _$_CrudCreditCardState extends _CrudCreditCardState
    with DiagnosticableTreeMixin {
  const _$_CrudCreditCardState({this.status = const ApiStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CrudCreditCardState(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CrudCreditCardState'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CrudCreditCardState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CrudCreditCardStateCopyWith<_$_CrudCreditCardState> get copyWith =>
      __$$_CrudCreditCardStateCopyWithImpl<_$_CrudCreditCardState>(
          this, _$identity);
}

abstract class _CrudCreditCardState extends CrudCreditCardState {
  const factory _CrudCreditCardState({final ApiStatus status}) =
      _$_CrudCreditCardState;
  const _CrudCreditCardState._() : super._();

  @override
  ApiStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_CrudCreditCardStateCopyWith<_$_CrudCreditCardState> get copyWith =>
      throw _privateConstructorUsedError;
}
