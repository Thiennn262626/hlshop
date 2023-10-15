// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crud_bank_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CrudBankAccountState {
  ApiStatus get apiStatus => throw _privateConstructorUsedError;
  BankAccountEntity? get payment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrudBankAccountStateCopyWith<CrudBankAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudBankAccountStateCopyWith<$Res> {
  factory $CrudBankAccountStateCopyWith(CrudBankAccountState value,
          $Res Function(CrudBankAccountState) then) =
      _$CrudBankAccountStateCopyWithImpl<$Res, CrudBankAccountState>;
  @useResult
  $Res call({ApiStatus apiStatus, BankAccountEntity? payment});

  $ApiStatusCopyWith<$Res> get apiStatus;
}

/// @nodoc
class _$CrudBankAccountStateCopyWithImpl<$Res,
        $Val extends CrudBankAccountState>
    implements $CrudBankAccountStateCopyWith<$Res> {
  _$CrudBankAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? payment = freezed,
  }) {
    return _then(_value.copyWith(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as BankAccountEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get apiStatus {
    return $ApiStatusCopyWith<$Res>(_value.apiStatus, (value) {
      return _then(_value.copyWith(apiStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CrudBankAccountStateCopyWith<$Res>
    implements $CrudBankAccountStateCopyWith<$Res> {
  factory _$$_CrudBankAccountStateCopyWith(_$_CrudBankAccountState value,
          $Res Function(_$_CrudBankAccountState) then) =
      __$$_CrudBankAccountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus apiStatus, BankAccountEntity? payment});

  @override
  $ApiStatusCopyWith<$Res> get apiStatus;
}

/// @nodoc
class __$$_CrudBankAccountStateCopyWithImpl<$Res>
    extends _$CrudBankAccountStateCopyWithImpl<$Res, _$_CrudBankAccountState>
    implements _$$_CrudBankAccountStateCopyWith<$Res> {
  __$$_CrudBankAccountStateCopyWithImpl(_$_CrudBankAccountState _value,
      $Res Function(_$_CrudBankAccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStatus = null,
    Object? payment = freezed,
  }) {
    return _then(_$_CrudBankAccountState(
      apiStatus: null == apiStatus
          ? _value.apiStatus
          : apiStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as BankAccountEntity?,
    ));
  }
}

/// @nodoc

class _$_CrudBankAccountState extends _CrudBankAccountState
    with DiagnosticableTreeMixin {
  const _$_CrudBankAccountState(
      {this.apiStatus = const ApiStatus.initial(), this.payment = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus apiStatus;
  @override
  @JsonKey()
  final BankAccountEntity? payment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CrudBankAccountState(apiStatus: $apiStatus, payment: $payment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CrudBankAccountState'))
      ..add(DiagnosticsProperty('apiStatus', apiStatus))
      ..add(DiagnosticsProperty('payment', payment));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CrudBankAccountState &&
            (identical(other.apiStatus, apiStatus) ||
                other.apiStatus == apiStatus) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiStatus, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CrudBankAccountStateCopyWith<_$_CrudBankAccountState> get copyWith =>
      __$$_CrudBankAccountStateCopyWithImpl<_$_CrudBankAccountState>(
          this, _$identity);
}

abstract class _CrudBankAccountState extends CrudBankAccountState {
  const factory _CrudBankAccountState(
      {final ApiStatus apiStatus,
      final BankAccountEntity? payment}) = _$_CrudBankAccountState;
  const _CrudBankAccountState._() : super._();

  @override
  ApiStatus get apiStatus;
  @override
  BankAccountEntity? get payment;
  @override
  @JsonKey(ignore: true)
  _$$_CrudBankAccountStateCopyWith<_$_CrudBankAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
