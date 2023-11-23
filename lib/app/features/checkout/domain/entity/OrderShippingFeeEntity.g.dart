// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OrderShippingFeeEntity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderShippingFeeEntityCWProxy {
  OrderShippingFeeEntity shippingFee(PriceUnit? shippingFee);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderShippingFeeEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderShippingFeeEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderShippingFeeEntity call({
    PriceUnit? shippingFee,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderShippingFeeEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderShippingFeeEntity.copyWith.fieldName(...)`
class _$OrderShippingFeeEntityCWProxyImpl
    implements _$OrderShippingFeeEntityCWProxy {
  const _$OrderShippingFeeEntityCWProxyImpl(this._value);

  final OrderShippingFeeEntity _value;

  @override
  OrderShippingFeeEntity shippingFee(PriceUnit? shippingFee) =>
      this(shippingFee: shippingFee);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderShippingFeeEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderShippingFeeEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderShippingFeeEntity call({
    Object? shippingFee = const $CopyWithPlaceholder(),
  }) {
    return OrderShippingFeeEntity(
      shippingFee: shippingFee == const $CopyWithPlaceholder()
          ? _value.shippingFee
          // ignore: cast_nullable_to_non_nullable
          : shippingFee as PriceUnit?,
    );
  }
}

extension $OrderShippingFeeEntityCopyWith on OrderShippingFeeEntity {
  /// Returns a callable class that can be used as follows: `instanceOfOrderShippingFeeEntity.copyWith(...)` or like so:`instanceOfOrderShippingFeeEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderShippingFeeEntityCWProxy get copyWith =>
      _$OrderShippingFeeEntityCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `OrderShippingFeeEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderShippingFeeEntity(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  OrderShippingFeeEntity copyWithNull({
    bool shippingFee = false,
  }) {
    return OrderShippingFeeEntity(
      shippingFee: shippingFee == true ? null : this.shippingFee,
    );
  }
}
