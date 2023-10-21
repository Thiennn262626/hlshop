// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_order_tracking_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserOrderTrackingDetailState {
  ApiStatus get status => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  List<OrderStatusTrackingEntity> get listOrderStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserOrderTrackingDetailStateCopyWith<UserOrderTrackingDetailState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderTrackingDetailStateCopyWith<$Res> {
  factory $UserOrderTrackingDetailStateCopyWith(
          UserOrderTrackingDetailState value,
          $Res Function(UserOrderTrackingDetailState) then) =
      _$UserOrderTrackingDetailStateCopyWithImpl<$Res,
          UserOrderTrackingDetailState>;
  @useResult
  $Res call(
      {ApiStatus status,
      String? orderId,
      List<OrderStatusTrackingEntity> listOrderStatus});

  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$UserOrderTrackingDetailStateCopyWithImpl<$Res,
        $Val extends UserOrderTrackingDetailState>
    implements $UserOrderTrackingDetailStateCopyWith<$Res> {
  _$UserOrderTrackingDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orderId = freezed,
    Object? listOrderStatus = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      listOrderStatus: null == listOrderStatus
          ? _value.listOrderStatus
          : listOrderStatus // ignore: cast_nullable_to_non_nullable
              as List<OrderStatusTrackingEntity>,
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
abstract class _$$UserOrderTrackingDetailStateImplCopyWith<$Res>
    implements $UserOrderTrackingDetailStateCopyWith<$Res> {
  factory _$$UserOrderTrackingDetailStateImplCopyWith(
          _$UserOrderTrackingDetailStateImpl value,
          $Res Function(_$UserOrderTrackingDetailStateImpl) then) =
      __$$UserOrderTrackingDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus status,
      String? orderId,
      List<OrderStatusTrackingEntity> listOrderStatus});

  @override
  $ApiStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$UserOrderTrackingDetailStateImplCopyWithImpl<$Res>
    extends _$UserOrderTrackingDetailStateCopyWithImpl<$Res,
        _$UserOrderTrackingDetailStateImpl>
    implements _$$UserOrderTrackingDetailStateImplCopyWith<$Res> {
  __$$UserOrderTrackingDetailStateImplCopyWithImpl(
      _$UserOrderTrackingDetailStateImpl _value,
      $Res Function(_$UserOrderTrackingDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? orderId = freezed,
    Object? listOrderStatus = null,
  }) {
    return _then(_$UserOrderTrackingDetailStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      listOrderStatus: null == listOrderStatus
          ? _value._listOrderStatus
          : listOrderStatus // ignore: cast_nullable_to_non_nullable
              as List<OrderStatusTrackingEntity>,
    ));
  }
}

/// @nodoc

class _$UserOrderTrackingDetailStateImpl extends _UserOrderTrackingDetailState
    with DiagnosticableTreeMixin {
  const _$UserOrderTrackingDetailStateImpl(
      {this.status = const ApiStatus.initial(),
      this.orderId = '',
      final List<OrderStatusTrackingEntity> listOrderStatus = const []})
      : _listOrderStatus = listOrderStatus,
        super._();

  @override
  @JsonKey()
  final ApiStatus status;
  @override
  @JsonKey()
  final String? orderId;
  final List<OrderStatusTrackingEntity> _listOrderStatus;
  @override
  @JsonKey()
  List<OrderStatusTrackingEntity> get listOrderStatus {
    if (_listOrderStatus is EqualUnmodifiableListView) return _listOrderStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOrderStatus);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserOrderTrackingDetailState(status: $status, orderId: $orderId, listOrderStatus: $listOrderStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserOrderTrackingDetailState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('listOrderStatus', listOrderStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrderTrackingDetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality()
                .equals(other._listOrderStatus, _listOrderStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, orderId,
      const DeepCollectionEquality().hash(_listOrderStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOrderTrackingDetailStateImplCopyWith<
          _$UserOrderTrackingDetailStateImpl>
      get copyWith => __$$UserOrderTrackingDetailStateImplCopyWithImpl<
          _$UserOrderTrackingDetailStateImpl>(this, _$identity);
}

abstract class _UserOrderTrackingDetailState
    extends UserOrderTrackingDetailState {
  const factory _UserOrderTrackingDetailState(
          {final ApiStatus status,
          final String? orderId,
          final List<OrderStatusTrackingEntity> listOrderStatus}) =
      _$UserOrderTrackingDetailStateImpl;
  const _UserOrderTrackingDetailState._() : super._();

  @override
  ApiStatus get status;
  @override
  String? get orderId;
  @override
  List<OrderStatusTrackingEntity> get listOrderStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserOrderTrackingDetailStateImplCopyWith<
          _$UserOrderTrackingDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
