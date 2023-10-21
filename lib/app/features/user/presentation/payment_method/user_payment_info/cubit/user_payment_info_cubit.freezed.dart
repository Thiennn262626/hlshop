// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_payment_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPaymentInfoState {
  ApiStatus get status => throw _privateConstructorUsedError;
  List<PaymentMethodEntity> get bankAccountList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPaymentInfoStateCopyWith<UserPaymentInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPaymentInfoStateCopyWith<$Res> {
  factory $UserPaymentInfoStateCopyWith(UserPaymentInfoState value,
          $Res Function(UserPaymentInfoState) then) =
      _$UserPaymentInfoStateCopyWithImpl<$Res, UserPaymentInfoState>;
  @useResult
  $Res call({ApiStatus status, List<PaymentMethodEntity> bankAccountList});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UserPaymentInfoStateCopyWithImpl<$Res,
        $Val extends UserPaymentInfoState>
    implements $UserPaymentInfoStateCopyWith<$Res> {
  _$UserPaymentInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bankAccountList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      bankAccountList: null == bankAccountList
          ? _value.bankAccountList
          : bankAccountList // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodEntity>,
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
abstract class _$$UserPaymentInfoStateImplCopyWith<$Res>
    implements $UserPaymentInfoStateCopyWith<$Res> {
  factory _$$UserPaymentInfoStateImplCopyWith(_$UserPaymentInfoStateImpl value,
          $Res Function(_$UserPaymentInfoStateImpl) then) =
      __$$UserPaymentInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ApiStatus status, List<PaymentMethodEntity> bankAccountList});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UserPaymentInfoStateImplCopyWithImpl<$Res>
    extends _$UserPaymentInfoStateCopyWithImpl<$Res, _$UserPaymentInfoStateImpl>
    implements _$$UserPaymentInfoStateImplCopyWith<$Res> {
  __$$UserPaymentInfoStateImplCopyWithImpl(_$UserPaymentInfoStateImpl _value,
      $Res Function(_$UserPaymentInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bankAccountList = null,
  }) {
    return _then(_$UserPaymentInfoStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      bankAccountList: null == bankAccountList
          ? _value._bankAccountList
          : bankAccountList // ignore: cast_nullable_to_non_nullable
              as List<PaymentMethodEntity>,
    ));
  }
}

/// @nodoc

class _$UserPaymentInfoStateImpl extends _UserPaymentInfoState
    with DiagnosticableTreeMixin {
  const _$UserPaymentInfoStateImpl(
      {this.status = const ApiStatus.initial(),
      final List<PaymentMethodEntity> bankAccountList = const []})
      : _bankAccountList = bankAccountList,
        super._();

  @override
  @JsonKey()
  final ApiStatus status;
  final List<PaymentMethodEntity> _bankAccountList;
  @override
  @JsonKey()
  List<PaymentMethodEntity> get bankAccountList {
    if (_bankAccountList is EqualUnmodifiableListView) return _bankAccountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankAccountList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserPaymentInfoState(status: $status, bankAccountList: $bankAccountList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserPaymentInfoState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('bankAccountList', bankAccountList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPaymentInfoStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._bankAccountList, _bankAccountList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_bankAccountList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPaymentInfoStateImplCopyWith<_$UserPaymentInfoStateImpl>
      get copyWith =>
          __$$UserPaymentInfoStateImplCopyWithImpl<_$UserPaymentInfoStateImpl>(
              this, _$identity);
}

abstract class _UserPaymentInfoState extends UserPaymentInfoState {
  const factory _UserPaymentInfoState(
          {final ApiStatus status,
          final List<PaymentMethodEntity> bankAccountList}) =
      _$UserPaymentInfoStateImpl;
  const _UserPaymentInfoState._() : super._();

  @override
  ApiStatus get status;
  @override
  List<PaymentMethodEntity> get bankAccountList;
  @override
  @JsonKey(ignore: true)
  _$$UserPaymentInfoStateImplCopyWith<_$UserPaymentInfoStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
