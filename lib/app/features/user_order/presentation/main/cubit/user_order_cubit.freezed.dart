// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserOrderState {
  ApiStatus get orderCountStatus => throw _privateConstructorUsedError;
  ApiStatus get orderListStatus =>
      throw _privateConstructorUsedError; // @Default(null) Map<OrderStatus, List<OrderEntity>>? userOrderListMap,
  List<OrderEntity> get userOrderList => throw _privateConstructorUsedError;
  OrderStatus? get orderStatus => throw _privateConstructorUsedError;
  List<int?>? get userOrderCountList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserOrderStateCopyWith<UserOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOrderStateCopyWith<$Res> {
  factory $UserOrderStateCopyWith(
          UserOrderState value, $Res Function(UserOrderState) then) =
      _$UserOrderStateCopyWithImpl<$Res, UserOrderState>;
  @useResult
  $Res call(
      {ApiStatus orderCountStatus,
      ApiStatus orderListStatus,
      List<OrderEntity> userOrderList,
      OrderStatus? orderStatus,
      List<int?>? userOrderCountList});

  $ApiStatusCopyWith<$Res> get orderCountStatus;
  $ApiStatusCopyWith<$Res> get orderListStatus;
}

/// @nodoc
class _$UserOrderStateCopyWithImpl<$Res, $Val extends UserOrderState>
    implements $UserOrderStateCopyWith<$Res> {
  _$UserOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderCountStatus = null,
    Object? orderListStatus = null,
    Object? userOrderList = null,
    Object? orderStatus = freezed,
    Object? userOrderCountList = freezed,
  }) {
    return _then(_value.copyWith(
      orderCountStatus: null == orderCountStatus
          ? _value.orderCountStatus
          : orderCountStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      orderListStatus: null == orderListStatus
          ? _value.orderListStatus
          : orderListStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userOrderList: null == userOrderList
          ? _value.userOrderList
          : userOrderList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      userOrderCountList: freezed == userOrderCountList
          ? _value.userOrderCountList
          : userOrderCountList // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get orderCountStatus {
    return $ApiStatusCopyWith<$Res>(_value.orderCountStatus, (value) {
      return _then(_value.copyWith(orderCountStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get orderListStatus {
    return $ApiStatusCopyWith<$Res>(_value.orderListStatus, (value) {
      return _then(_value.copyWith(orderListStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserOrderStateImplCopyWith<$Res>
    implements $UserOrderStateCopyWith<$Res> {
  factory _$$UserOrderStateImplCopyWith(_$UserOrderStateImpl value,
          $Res Function(_$UserOrderStateImpl) then) =
      __$$UserOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus orderCountStatus,
      ApiStatus orderListStatus,
      List<OrderEntity> userOrderList,
      OrderStatus? orderStatus,
      List<int?>? userOrderCountList});

  @override
  $ApiStatusCopyWith<$Res> get orderCountStatus;
  @override
  $ApiStatusCopyWith<$Res> get orderListStatus;
}

/// @nodoc
class __$$UserOrderStateImplCopyWithImpl<$Res>
    extends _$UserOrderStateCopyWithImpl<$Res, _$UserOrderStateImpl>
    implements _$$UserOrderStateImplCopyWith<$Res> {
  __$$UserOrderStateImplCopyWithImpl(
      _$UserOrderStateImpl _value, $Res Function(_$UserOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderCountStatus = null,
    Object? orderListStatus = null,
    Object? userOrderList = null,
    Object? orderStatus = freezed,
    Object? userOrderCountList = freezed,
  }) {
    return _then(_$UserOrderStateImpl(
      orderCountStatus: null == orderCountStatus
          ? _value.orderCountStatus
          : orderCountStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      orderListStatus: null == orderListStatus
          ? _value.orderListStatus
          : orderListStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userOrderList: null == userOrderList
          ? _value._userOrderList
          : userOrderList // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus?,
      userOrderCountList: freezed == userOrderCountList
          ? _value._userOrderCountList
          : userOrderCountList // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
    ));
  }
}

/// @nodoc

class _$UserOrderStateImpl extends _UserOrderState
    with DiagnosticableTreeMixin {
  const _$UserOrderStateImpl(
      {this.orderCountStatus = const ApiStatus.initial(),
      this.orderListStatus = const ApiStatus.initial(),
      final List<OrderEntity> userOrderList = const [],
      this.orderStatus = null,
      final List<int?>? userOrderCountList = null})
      : _userOrderList = userOrderList,
        _userOrderCountList = userOrderCountList,
        super._();

  @override
  @JsonKey()
  final ApiStatus orderCountStatus;
  @override
  @JsonKey()
  final ApiStatus orderListStatus;
// @Default(null) Map<OrderStatus, List<OrderEntity>>? userOrderListMap,
  final List<OrderEntity> _userOrderList;
// @Default(null) Map<OrderStatus, List<OrderEntity>>? userOrderListMap,
  @override
  @JsonKey()
  List<OrderEntity> get userOrderList {
    if (_userOrderList is EqualUnmodifiableListView) return _userOrderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userOrderList);
  }

  @override
  @JsonKey()
  final OrderStatus? orderStatus;
  final List<int?>? _userOrderCountList;
  @override
  @JsonKey()
  List<int?>? get userOrderCountList {
    final value = _userOrderCountList;
    if (value == null) return null;
    if (_userOrderCountList is EqualUnmodifiableListView)
      return _userOrderCountList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserOrderState(orderCountStatus: $orderCountStatus, orderListStatus: $orderListStatus, userOrderList: $userOrderList, orderStatus: $orderStatus, userOrderCountList: $userOrderCountList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserOrderState'))
      ..add(DiagnosticsProperty('orderCountStatus', orderCountStatus))
      ..add(DiagnosticsProperty('orderListStatus', orderListStatus))
      ..add(DiagnosticsProperty('userOrderList', userOrderList))
      ..add(DiagnosticsProperty('orderStatus', orderStatus))
      ..add(DiagnosticsProperty('userOrderCountList', userOrderCountList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrderStateImpl &&
            (identical(other.orderCountStatus, orderCountStatus) ||
                other.orderCountStatus == orderCountStatus) &&
            (identical(other.orderListStatus, orderListStatus) ||
                other.orderListStatus == orderListStatus) &&
            const DeepCollectionEquality()
                .equals(other._userOrderList, _userOrderList) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            const DeepCollectionEquality()
                .equals(other._userOrderCountList, _userOrderCountList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderCountStatus,
      orderListStatus,
      const DeepCollectionEquality().hash(_userOrderList),
      orderStatus,
      const DeepCollectionEquality().hash(_userOrderCountList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserOrderStateImplCopyWith<_$UserOrderStateImpl> get copyWith =>
      __$$UserOrderStateImplCopyWithImpl<_$UserOrderStateImpl>(
          this, _$identity);
}

abstract class _UserOrderState extends UserOrderState {
  const factory _UserOrderState(
      {final ApiStatus orderCountStatus,
      final ApiStatus orderListStatus,
      final List<OrderEntity> userOrderList,
      final OrderStatus? orderStatus,
      final List<int?>? userOrderCountList}) = _$UserOrderStateImpl;
  const _UserOrderState._() : super._();

  @override
  ApiStatus get orderCountStatus;
  @override
  ApiStatus get orderListStatus;
  @override // @Default(null) Map<OrderStatus, List<OrderEntity>>? userOrderListMap,
  List<OrderEntity> get userOrderList;
  @override
  OrderStatus? get orderStatus;
  @override
  List<int?>? get userOrderCountList;
  @override
  @JsonKey(ignore: true)
  _$$UserOrderStateImplCopyWith<_$UserOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
