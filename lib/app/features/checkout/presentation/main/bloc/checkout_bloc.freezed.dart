// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCheckoutData,
    required TResult Function() loadDefaultAddress,
    required TResult Function() createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCheckoutData,
    TResult? Function()? loadDefaultAddress,
    TResult? Function()? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCheckoutData,
    TResult Function()? loadDefaultAddress,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckoutInitialEvent value) initial,
    required TResult Function(_LoadCheckoutDataEvent value) loadCheckoutData,
    required TResult Function(_LoadDefaultAddressEvent value)
        loadDefaultAddress,
    required TResult Function(_CreateOrderEvent value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutInitialEvent value)? initial,
    TResult? Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult? Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult? Function(_CreateOrderEvent value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutInitialEvent value)? initial,
    TResult Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult Function(_CreateOrderEvent value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckoutInitialEventImplCopyWith<$Res> {
  factory _$$CheckoutInitialEventImplCopyWith(_$CheckoutInitialEventImpl value,
          $Res Function(_$CheckoutInitialEventImpl) then) =
      __$$CheckoutInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutInitialEventImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$CheckoutInitialEventImpl>
    implements _$$CheckoutInitialEventImplCopyWith<$Res> {
  __$$CheckoutInitialEventImplCopyWithImpl(_$CheckoutInitialEventImpl _value,
      $Res Function(_$CheckoutInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutInitialEventImpl extends _CheckoutInitialEvent
    with DiagnosticableTreeMixin {
  const _$CheckoutInitialEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutEvent.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCheckoutData,
    required TResult Function() loadDefaultAddress,
    required TResult Function() createOrder,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCheckoutData,
    TResult? Function()? loadDefaultAddress,
    TResult? Function()? createOrder,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCheckoutData,
    TResult Function()? loadDefaultAddress,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckoutInitialEvent value) initial,
    required TResult Function(_LoadCheckoutDataEvent value) loadCheckoutData,
    required TResult Function(_LoadDefaultAddressEvent value)
        loadDefaultAddress,
    required TResult Function(_CreateOrderEvent value) createOrder,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutInitialEvent value)? initial,
    TResult? Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult? Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult? Function(_CreateOrderEvent value)? createOrder,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutInitialEvent value)? initial,
    TResult Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult Function(_CreateOrderEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CheckoutInitialEvent extends CheckoutEvent {
  const factory _CheckoutInitialEvent() = _$CheckoutInitialEventImpl;
  const _CheckoutInitialEvent._() : super._();
}

/// @nodoc
abstract class _$$LoadCheckoutDataEventImplCopyWith<$Res> {
  factory _$$LoadCheckoutDataEventImplCopyWith(
          _$LoadCheckoutDataEventImpl value,
          $Res Function(_$LoadCheckoutDataEventImpl) then) =
      __$$LoadCheckoutDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCheckoutDataEventImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$LoadCheckoutDataEventImpl>
    implements _$$LoadCheckoutDataEventImplCopyWith<$Res> {
  __$$LoadCheckoutDataEventImplCopyWithImpl(_$LoadCheckoutDataEventImpl _value,
      $Res Function(_$LoadCheckoutDataEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCheckoutDataEventImpl extends _LoadCheckoutDataEvent
    with DiagnosticableTreeMixin {
  const _$LoadCheckoutDataEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.loadCheckoutData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CheckoutEvent.loadCheckoutData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCheckoutDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCheckoutData,
    required TResult Function() loadDefaultAddress,
    required TResult Function() createOrder,
  }) {
    return loadCheckoutData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCheckoutData,
    TResult? Function()? loadDefaultAddress,
    TResult? Function()? createOrder,
  }) {
    return loadCheckoutData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCheckoutData,
    TResult Function()? loadDefaultAddress,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (loadCheckoutData != null) {
      return loadCheckoutData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckoutInitialEvent value) initial,
    required TResult Function(_LoadCheckoutDataEvent value) loadCheckoutData,
    required TResult Function(_LoadDefaultAddressEvent value)
        loadDefaultAddress,
    required TResult Function(_CreateOrderEvent value) createOrder,
  }) {
    return loadCheckoutData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutInitialEvent value)? initial,
    TResult? Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult? Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult? Function(_CreateOrderEvent value)? createOrder,
  }) {
    return loadCheckoutData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutInitialEvent value)? initial,
    TResult Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult Function(_CreateOrderEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (loadCheckoutData != null) {
      return loadCheckoutData(this);
    }
    return orElse();
  }
}

abstract class _LoadCheckoutDataEvent extends CheckoutEvent {
  const factory _LoadCheckoutDataEvent() = _$LoadCheckoutDataEventImpl;
  const _LoadCheckoutDataEvent._() : super._();
}

/// @nodoc
abstract class _$$LoadDefaultAddressEventImplCopyWith<$Res> {
  factory _$$LoadDefaultAddressEventImplCopyWith(
          _$LoadDefaultAddressEventImpl value,
          $Res Function(_$LoadDefaultAddressEventImpl) then) =
      __$$LoadDefaultAddressEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDefaultAddressEventImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$LoadDefaultAddressEventImpl>
    implements _$$LoadDefaultAddressEventImplCopyWith<$Res> {
  __$$LoadDefaultAddressEventImplCopyWithImpl(
      _$LoadDefaultAddressEventImpl _value,
      $Res Function(_$LoadDefaultAddressEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadDefaultAddressEventImpl extends _LoadDefaultAddressEvent
    with DiagnosticableTreeMixin {
  const _$LoadDefaultAddressEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.loadDefaultAddress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'CheckoutEvent.loadDefaultAddress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDefaultAddressEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCheckoutData,
    required TResult Function() loadDefaultAddress,
    required TResult Function() createOrder,
  }) {
    return loadDefaultAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCheckoutData,
    TResult? Function()? loadDefaultAddress,
    TResult? Function()? createOrder,
  }) {
    return loadDefaultAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCheckoutData,
    TResult Function()? loadDefaultAddress,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (loadDefaultAddress != null) {
      return loadDefaultAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckoutInitialEvent value) initial,
    required TResult Function(_LoadCheckoutDataEvent value) loadCheckoutData,
    required TResult Function(_LoadDefaultAddressEvent value)
        loadDefaultAddress,
    required TResult Function(_CreateOrderEvent value) createOrder,
  }) {
    return loadDefaultAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutInitialEvent value)? initial,
    TResult? Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult? Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult? Function(_CreateOrderEvent value)? createOrder,
  }) {
    return loadDefaultAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutInitialEvent value)? initial,
    TResult Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult Function(_CreateOrderEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (loadDefaultAddress != null) {
      return loadDefaultAddress(this);
    }
    return orElse();
  }
}

abstract class _LoadDefaultAddressEvent extends CheckoutEvent {
  const factory _LoadDefaultAddressEvent() = _$LoadDefaultAddressEventImpl;
  const _LoadDefaultAddressEvent._() : super._();
}

/// @nodoc
abstract class _$$CreateOrderEventImplCopyWith<$Res> {
  factory _$$CreateOrderEventImplCopyWith(_$CreateOrderEventImpl value,
          $Res Function(_$CreateOrderEventImpl) then) =
      __$$CreateOrderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateOrderEventImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$CreateOrderEventImpl>
    implements _$$CreateOrderEventImplCopyWith<$Res> {
  __$$CreateOrderEventImplCopyWithImpl(_$CreateOrderEventImpl _value,
      $Res Function(_$CreateOrderEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateOrderEventImpl extends _CreateOrderEvent
    with DiagnosticableTreeMixin {
  const _$CreateOrderEventImpl() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.createOrder()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutEvent.createOrder'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateOrderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCheckoutData,
    required TResult Function() loadDefaultAddress,
    required TResult Function() createOrder,
  }) {
    return createOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCheckoutData,
    TResult? Function()? loadDefaultAddress,
    TResult? Function()? createOrder,
  }) {
    return createOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCheckoutData,
    TResult Function()? loadDefaultAddress,
    TResult Function()? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckoutInitialEvent value) initial,
    required TResult Function(_LoadCheckoutDataEvent value) loadCheckoutData,
    required TResult Function(_LoadDefaultAddressEvent value)
        loadDefaultAddress,
    required TResult Function(_CreateOrderEvent value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckoutInitialEvent value)? initial,
    TResult? Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult? Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult? Function(_CreateOrderEvent value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckoutInitialEvent value)? initial,
    TResult Function(_LoadCheckoutDataEvent value)? loadCheckoutData,
    TResult Function(_LoadDefaultAddressEvent value)? loadDefaultAddress,
    TResult Function(_CreateOrderEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrderEvent extends CheckoutEvent {
  const factory _CreateOrderEvent() = _$CreateOrderEventImpl;
  const _CreateOrderEvent._() : super._();
}

/// @nodoc
mixin _$CheckoutState {
  ApiStatus get loadCartStatus => throw _privateConstructorUsedError;
  List<ShoppingCartItemGroupEntity> get cartItemGroups =>
      throw _privateConstructorUsedError;
  Set<String> get selectedCartItemIds => throw _privateConstructorUsedError;
  ApiStatus get loadUserDefaultAddressStatus =>
      throw _privateConstructorUsedError;
  UserAddressEntity? get userAddress => throw _privateConstructorUsedError;
  PaymentMethodEntity? get paymentMethod => throw _privateConstructorUsedError;
  ApiStatus get createOrderStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckoutStateCopyWith<CheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
  @useResult
  $Res call(
      {ApiStatus loadCartStatus,
      List<ShoppingCartItemGroupEntity> cartItemGroups,
      Set<String> selectedCartItemIds,
      ApiStatus loadUserDefaultAddressStatus,
      UserAddressEntity? userAddress,
      PaymentMethodEntity? paymentMethod,
      ApiStatus createOrderStatus});

  $ApiStatusCopyWith<$Res> get loadCartStatus;
  $ApiStatusCopyWith<$Res> get loadUserDefaultAddressStatus;
  $ApiStatusCopyWith<$Res> get createOrderStatus;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadCartStatus = null,
    Object? cartItemGroups = null,
    Object? selectedCartItemIds = null,
    Object? loadUserDefaultAddressStatus = null,
    Object? userAddress = freezed,
    Object? paymentMethod = freezed,
    Object? createOrderStatus = null,
  }) {
    return _then(_value.copyWith(
      loadCartStatus: null == loadCartStatus
          ? _value.loadCartStatus
          : loadCartStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      cartItemGroups: null == cartItemGroups
          ? _value.cartItemGroups
          : cartItemGroups // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItemGroupEntity>,
      selectedCartItemIds: null == selectedCartItemIds
          ? _value.selectedCartItemIds
          : selectedCartItemIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      loadUserDefaultAddressStatus: null == loadUserDefaultAddressStatus
          ? _value.loadUserDefaultAddressStatus
          : loadUserDefaultAddressStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userAddress: freezed == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddressEntity?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEntity?,
      createOrderStatus: null == createOrderStatus
          ? _value.createOrderStatus
          : createOrderStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get loadCartStatus {
    return $ApiStatusCopyWith<$Res>(_value.loadCartStatus, (value) {
      return _then(_value.copyWith(loadCartStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get loadUserDefaultAddressStatus {
    return $ApiStatusCopyWith<$Res>(_value.loadUserDefaultAddressStatus,
        (value) {
      return _then(
          _value.copyWith(loadUserDefaultAddressStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get createOrderStatus {
    return $ApiStatusCopyWith<$Res>(_value.createOrderStatus, (value) {
      return _then(_value.copyWith(createOrderStatus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutStateImplCopyWith<$Res>
    implements $CheckoutStateCopyWith<$Res> {
  factory _$$CheckoutStateImplCopyWith(
          _$CheckoutStateImpl value, $Res Function(_$CheckoutStateImpl) then) =
      __$$CheckoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus loadCartStatus,
      List<ShoppingCartItemGroupEntity> cartItemGroups,
      Set<String> selectedCartItemIds,
      ApiStatus loadUserDefaultAddressStatus,
      UserAddressEntity? userAddress,
      PaymentMethodEntity? paymentMethod,
      ApiStatus createOrderStatus});

  @override
  $ApiStatusCopyWith<$Res> get loadCartStatus;
  @override
  $ApiStatusCopyWith<$Res> get loadUserDefaultAddressStatus;
  @override
  $ApiStatusCopyWith<$Res> get createOrderStatus;
}

/// @nodoc
class __$$CheckoutStateImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$CheckoutStateImpl>
    implements _$$CheckoutStateImplCopyWith<$Res> {
  __$$CheckoutStateImplCopyWithImpl(
      _$CheckoutStateImpl _value, $Res Function(_$CheckoutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadCartStatus = null,
    Object? cartItemGroups = null,
    Object? selectedCartItemIds = null,
    Object? loadUserDefaultAddressStatus = null,
    Object? userAddress = freezed,
    Object? paymentMethod = freezed,
    Object? createOrderStatus = null,
  }) {
    return _then(_$CheckoutStateImpl(
      loadCartStatus: null == loadCartStatus
          ? _value.loadCartStatus
          : loadCartStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      cartItemGroups: null == cartItemGroups
          ? _value._cartItemGroups
          : cartItemGroups // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartItemGroupEntity>,
      selectedCartItemIds: null == selectedCartItemIds
          ? _value._selectedCartItemIds
          : selectedCartItemIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      loadUserDefaultAddressStatus: null == loadUserDefaultAddressStatus
          ? _value.loadUserDefaultAddressStatus
          : loadUserDefaultAddressStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      userAddress: freezed == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddressEntity?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEntity?,
      createOrderStatus: null == createOrderStatus
          ? _value.createOrderStatus
          : createOrderStatus // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
    ));
  }
}

/// @nodoc

class _$CheckoutStateImpl extends _CheckoutState with DiagnosticableTreeMixin {
  const _$CheckoutStateImpl(
      {this.loadCartStatus = const ApiStatus.initial(),
      final List<ShoppingCartItemGroupEntity> cartItemGroups = const [],
      final Set<String> selectedCartItemIds = const {},
      this.loadUserDefaultAddressStatus = const ApiStatus.initial(),
      this.userAddress,
      this.paymentMethod,
      this.createOrderStatus = const ApiStatus.initial()})
      : _cartItemGroups = cartItemGroups,
        _selectedCartItemIds = selectedCartItemIds,
        super._();

  @override
  @JsonKey()
  final ApiStatus loadCartStatus;
  final List<ShoppingCartItemGroupEntity> _cartItemGroups;
  @override
  @JsonKey()
  List<ShoppingCartItemGroupEntity> get cartItemGroups {
    if (_cartItemGroups is EqualUnmodifiableListView) return _cartItemGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItemGroups);
  }

  final Set<String> _selectedCartItemIds;
  @override
  @JsonKey()
  Set<String> get selectedCartItemIds {
    if (_selectedCartItemIds is EqualUnmodifiableSetView)
      return _selectedCartItemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedCartItemIds);
  }

  @override
  @JsonKey()
  final ApiStatus loadUserDefaultAddressStatus;
  @override
  final UserAddressEntity? userAddress;
  @override
  final PaymentMethodEntity? paymentMethod;
  @override
  @JsonKey()
  final ApiStatus createOrderStatus;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState(loadCartStatus: $loadCartStatus, cartItemGroups: $cartItemGroups, selectedCartItemIds: $selectedCartItemIds, loadUserDefaultAddressStatus: $loadUserDefaultAddressStatus, userAddress: $userAddress, paymentMethod: $paymentMethod, createOrderStatus: $createOrderStatus)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutState'))
      ..add(DiagnosticsProperty('loadCartStatus', loadCartStatus))
      ..add(DiagnosticsProperty('cartItemGroups', cartItemGroups))
      ..add(DiagnosticsProperty('selectedCartItemIds', selectedCartItemIds))
      ..add(DiagnosticsProperty(
          'loadUserDefaultAddressStatus', loadUserDefaultAddressStatus))
      ..add(DiagnosticsProperty('userAddress', userAddress))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod))
      ..add(DiagnosticsProperty('createOrderStatus', createOrderStatus));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutStateImpl &&
            (identical(other.loadCartStatus, loadCartStatus) ||
                other.loadCartStatus == loadCartStatus) &&
            const DeepCollectionEquality()
                .equals(other._cartItemGroups, _cartItemGroups) &&
            const DeepCollectionEquality()
                .equals(other._selectedCartItemIds, _selectedCartItemIds) &&
            (identical(other.loadUserDefaultAddressStatus,
                    loadUserDefaultAddressStatus) ||
                other.loadUserDefaultAddressStatus ==
                    loadUserDefaultAddressStatus) &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.createOrderStatus, createOrderStatus) ||
                other.createOrderStatus == createOrderStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadCartStatus,
      const DeepCollectionEquality().hash(_cartItemGroups),
      const DeepCollectionEquality().hash(_selectedCartItemIds),
      loadUserDefaultAddressStatus,
      userAddress,
      paymentMethod,
      createOrderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      __$$CheckoutStateImplCopyWithImpl<_$CheckoutStateImpl>(this, _$identity);
}

abstract class _CheckoutState extends CheckoutState {
  const factory _CheckoutState(
      {final ApiStatus loadCartStatus,
      final List<ShoppingCartItemGroupEntity> cartItemGroups,
      final Set<String> selectedCartItemIds,
      final ApiStatus loadUserDefaultAddressStatus,
      final UserAddressEntity? userAddress,
      final PaymentMethodEntity? paymentMethod,
      final ApiStatus createOrderStatus}) = _$CheckoutStateImpl;
  const _CheckoutState._() : super._();

  @override
  ApiStatus get loadCartStatus;
  @override
  List<ShoppingCartItemGroupEntity> get cartItemGroups;
  @override
  Set<String> get selectedCartItemIds;
  @override
  ApiStatus get loadUserDefaultAddressStatus;
  @override
  UserAddressEntity? get userAddress;
  @override
  PaymentMethodEntity? get paymentMethod;
  @override
  ApiStatus get createOrderStatus;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutStateImplCopyWith<_$CheckoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
