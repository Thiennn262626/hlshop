// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_base_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ShoppingCartItemEntityCWProxy {
  ShoppingCartItemEntity id(String? id);

  ShoppingCartItemEntity product(ProductEntity product);

  ShoppingCartItemEntity quantity(int quantity);

  ShoppingCartItemEntity variant(ProductVariantEntity? variant);

  ShoppingCartItemEntity object(Object? object);

  ShoppingCartItemEntity price(PriceUnit price);

  ShoppingCartItemEntity priceBefore(PriceUnit priceBefore);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShoppingCartItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShoppingCartItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ShoppingCartItemEntity call({
    String? id,
    ProductEntity? product,
    int? quantity,
    ProductVariantEntity? variant,
    Object? object,
    PriceUnit? price,
    PriceUnit? priceBefore,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfShoppingCartItemEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfShoppingCartItemEntity.copyWith.fieldName(...)`
class _$ShoppingCartItemEntityCWProxyImpl
    implements _$ShoppingCartItemEntityCWProxy {
  const _$ShoppingCartItemEntityCWProxyImpl(this._value);

  final ShoppingCartItemEntity _value;

  @override
  ShoppingCartItemEntity id(String? id) => this(id: id);

  @override
  ShoppingCartItemEntity product(ProductEntity product) =>
      this(product: product);

  @override
  ShoppingCartItemEntity quantity(int quantity) => this(quantity: quantity);

  @override
  ShoppingCartItemEntity variant(ProductVariantEntity? variant) =>
      this(variant: variant);

  @override
  ShoppingCartItemEntity object(Object? object) => this(object: object);

  @override
  ShoppingCartItemEntity price(PriceUnit price) => this(price: price);

  @override
  ShoppingCartItemEntity priceBefore(PriceUnit priceBefore) =>
      this(priceBefore: priceBefore);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShoppingCartItemEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShoppingCartItemEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ShoppingCartItemEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? product = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? variant = const $CopyWithPlaceholder(),
    Object? object = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? priceBefore = const $CopyWithPlaceholder(),
  }) {
    return ShoppingCartItemEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      product: product == const $CopyWithPlaceholder() || product == null
          ? _value.product
          // ignore: cast_nullable_to_non_nullable
          : product as ProductEntity,
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
      variant: variant == const $CopyWithPlaceholder()
          ? _value.variant
          // ignore: cast_nullable_to_non_nullable
          : variant as ProductVariantEntity?,
      object: object == const $CopyWithPlaceholder()
          ? _value.object
          // ignore: cast_nullable_to_non_nullable
          : object as Object?,
      price: price == const $CopyWithPlaceholder() || price == null
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as PriceUnit,
      priceBefore:
          priceBefore == const $CopyWithPlaceholder() || priceBefore == null
              ? _value.priceBefore
              // ignore: cast_nullable_to_non_nullable
              : priceBefore as PriceUnit,
    );
  }
}

extension $ShoppingCartItemEntityCopyWith on ShoppingCartItemEntity {
  /// Returns a callable class that can be used as follows: `instanceOfShoppingCartItemEntity.copyWith(...)` or like so:`instanceOfShoppingCartItemEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ShoppingCartItemEntityCWProxy get copyWith =>
      _$ShoppingCartItemEntityCWProxyImpl(this);
}
