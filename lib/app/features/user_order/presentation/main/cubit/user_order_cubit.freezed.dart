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
  Map<OrderStatus, int?>? get orderStatusCountMap =>
      throw _privateConstructorUsedError;
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
      Map<OrderStatus, int?>? orderStatusCountMap,
      List<int?>? userOrderCountList});

  $ApiStatusCopyWith<$Res> get orderCountStatus;
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
    Object? orderStatusCountMap = freezed,
    Object? userOrderCountList = freezed,
  }) {
    return _then(_value.copyWith(
      orderCountStatus: null == orderCountStatus
          ? _value.orderCountStatus
          : orderCountStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      orderStatusCountMap: freezed == orderStatusCountMap
          ? _value.orderStatusCountMap
          : orderStatusCountMap // ignore: cast_nullable_to_non_nullable
              as Map<OrderStatus, int?>?,
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
}

/// @nodoc
abstract class _$$_UserOrderStateCopyWith<$Res>
    implements $UserOrderStateCopyWith<$Res> {
  factory _$$_UserOrderStateCopyWith(
          _$_UserOrderState value, $Res Function(_$_UserOrderState) then) =
      __$$_UserOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus orderCountStatus,
      Map<OrderStatus, int?>? orderStatusCountMap,
      List<int?>? userOrderCountList});

  @override
  $ApiStatusCopyWith<$Res> get orderCountStatus;
}

/// @nodoc
class __$$_UserOrderStateCopyWithImpl<$Res>
    extends _$UserOrderStateCopyWithImpl<$Res, _$_UserOrderState>
    implements _$$_UserOrderStateCopyWith<$Res> {
  __$$_UserOrderStateCopyWithImpl(
      _$_UserOrderState _value, $Res Function(_$_UserOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderCountStatus = null,
    Object? orderStatusCountMap = freezed,
    Object? userOrderCountList = freezed,
  }) {
    return _then(_$_UserOrderState(
      orderCountStatus: null == orderCountStatus
          ? _value.orderCountStatus
          : orderCountStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      orderStatusCountMap: freezed == orderStatusCountMap
          ? _value._orderStatusCountMap
          : orderStatusCountMap // ignore: cast_nullable_to_non_nullable
              as Map<OrderStatus, int?>?,
      userOrderCountList: freezed == userOrderCountList
          ? _value._userOrderCountList
          : userOrderCountList // ignore: cast_nullable_to_non_nullable
              as List<int?>?,
    ));
  }
}

/// @nodoc

class _$_UserOrderState extends _UserOrderState with DiagnosticableTreeMixin {
  const _$_UserOrderState(
      {this.orderCountStatus = const ApiStatus.initial(),
      final Map<OrderStatus, int?>? orderStatusCountMap = null,
      final List<int?>? userOrderCountList = null})
      : _orderStatusCountMap = orderStatusCountMap,
        _userOrderCountList = userOrderCountList,
        super._();

  @override
  @JsonKey()
  final ApiStatus orderCountStatus;
  final Map<OrderStatus, int?>? _orderStatusCountMap;
  @override
  @JsonKey()
  Map<OrderStatus, int?>? get orderStatusCountMap {
    final value = _orderStatusCountMap;
    if (value == null) return null;
    if (_orderStatusCountMap is EqualUnmodifiableMapView)
      return _orderStatusCountMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

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
    return 'UserOrderState(orderCountStatus: $orderCountStatus, orderStatusCountMap: $orderStatusCountMap, userOrderCountList: $userOrderCountList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserOrderState'))
      ..add(DiagnosticsProperty('orderCountStatus', orderCountStatus))
      ..add(DiagnosticsProperty('orderStatusCountMap', orderStatusCountMap))
      ..add(DiagnosticsProperty('userOrderCountList', userOrderCountList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserOrderState &&
            (identical(other.orderCountStatus, orderCountStatus) ||
                other.orderCountStatus == orderCountStatus) &&
            const DeepCollectionEquality()
                .equals(other._orderStatusCountMap, _orderStatusCountMap) &&
            const DeepCollectionEquality()
                .equals(other._userOrderCountList, _userOrderCountList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderCountStatus,
      const DeepCollectionEquality().hash(_orderStatusCountMap),
      const DeepCollectionEquality().hash(_userOrderCountList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserOrderStateCopyWith<_$_UserOrderState> get copyWith =>
      __$$_UserOrderStateCopyWithImpl<_$_UserOrderState>(this, _$identity);
}

abstract class _UserOrderState extends UserOrderState {
  const factory _UserOrderState(
      {final ApiStatus orderCountStatus,
      final Map<OrderStatus, int?>? orderStatusCountMap,
      final List<int?>? userOrderCountList}) = _$_UserOrderState;
  const _UserOrderState._() : super._();

  @override
  ApiStatus get orderCountStatus;
  @override
  Map<OrderStatus, int?>? get orderStatusCountMap;
  @override
  List<int?>? get userOrderCountList;
  @override
  @JsonKey(ignore: true)
  _$$_UserOrderStateCopyWith<_$_UserOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
