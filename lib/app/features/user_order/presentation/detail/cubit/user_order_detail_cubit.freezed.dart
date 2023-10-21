// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_order_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserOrderDetailState {
  ApiStatus get status => throw _privateConstructorUsedError;
  OrderDataEntity? get order => throw _privateConstructorUsedError;
  OrderStatusTrackingEntity? get orderTrackingStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserOrderDetailStateCopyWith<UserOrderDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderDetailStateCopyWith<$Res> {
  factory $UserOrderDetailStateCopyWith(UserOrderDetailState value,
          $Res Function(UserOrderDetailState) then) =
      _$UserOrderDetailStateCopyWithImpl<$Res, UserOrderDetailState>;
  @useResult
  $Res call(
      {ApiStatus status,
      OrderDataEntity? order,
      OrderStatusTrackingEntity? orderTrackingStatus});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UserOrderDetailStateCopyWithImpl<$Res,
        $Val extends UserOrderDetailState>
    implements $UserOrderDetailStateCopyWith<$Res> {
  _$UserOrderDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? order = freezed,
    Object? orderTrackingStatus = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDataEntity?,
      orderTrackingStatus: freezed == orderTrackingStatus
          ? _value.orderTrackingStatus
          : orderTrackingStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusTrackingEntity?,
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
abstract class _$$UserOrderDetailStateImplCopyWith<$Res>
    implements $UserOrderDetailStateCopyWith<$Res> {
  factory _$$UserOrderDetailStateImplCopyWith(_$UserOrderDetailStateImpl value,
          $Res Function(_$UserOrderDetailStateImpl) then) =
      __$$UserOrderDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus status,
      OrderDataEntity? order,
      OrderStatusTrackingEntity? orderTrackingStatus});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UserOrderDetailStateImplCopyWithImpl<$Res>
    extends _$UserOrderDetailStateCopyWithImpl<$Res, _$UserOrderDetailStateImpl>
    implements _$$UserOrderDetailStateImplCopyWith<$Res> {
  __$$UserOrderDetailStateImplCopyWithImpl(_$UserOrderDetailStateImpl _value,
      $Res Function(_$UserOrderDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? order = freezed,
    Object? orderTrackingStatus = freezed,
  }) {
    return _then(_$UserOrderDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDataEntity?,
      orderTrackingStatus: freezed == orderTrackingStatus
          ? _value.orderTrackingStatus
          : orderTrackingStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusTrackingEntity?,
    ));
  }
}

/// @nodoc

class _$UserOrderDetailStateImpl extends _UserOrderDetailState
    with DiagnosticableTreeMixin {
  const _$UserOrderDetailStateImpl(
      {this.status = const ApiStatus.initial(),
      this.order = null,
      this.orderTrackingStatus = null})
      : super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final OrderDataEntity? order;
  @override
  @JsonKey()
  final OrderStatusTrackingEntity? orderTrackingStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserOrderDetailState(status: $status, order: $order, orderTrackingStatus: $orderTrackingStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserOrderDetailState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('order', order))
      ..add(DiagnosticsProperty('orderTrackingStatus', orderTrackingStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrderDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.orderTrackingStatus, orderTrackingStatus) ||
                other.orderTrackingStatus == orderTrackingStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, order, orderTrackingStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOrderDetailStateImplCopyWith<_$UserOrderDetailStateImpl>
      get copyWith =>
          __$$UserOrderDetailStateImplCopyWithImpl<_$UserOrderDetailStateImpl>(
              this, _$identity);
}

abstract class _UserOrderDetailState extends UserOrderDetailState {
  const factory _UserOrderDetailState(
          {final ApiStatus status,
          final OrderDataEntity? order,
          final OrderStatusTrackingEntity? orderTrackingStatus}) =
      _$UserOrderDetailStateImpl;
  const _UserOrderDetailState._() : super._();

  @override
  ApiStatus get status;
  @override
  OrderDataEntity? get order;
  @override
  OrderStatusTrackingEntity? get orderTrackingStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserOrderDetailStateImplCopyWith<_$UserOrderDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
