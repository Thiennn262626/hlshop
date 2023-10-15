// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_base_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ShoppingCartItemGroupEntityCWProxy {
  ShoppingCartItemGroupEntity id(String? id);

  ShoppingCartItemGroupEntity distributor(DistributorEntity distributor);

  ShoppingCartItemGroupEntity productCartList(
      List<ShoppingCartItemEntity> productCartList);

  ShoppingCartItemGroupEntity object(Object? object);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShoppingCartItemGroupEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShoppingCartItemGroupEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ShoppingCartItemGroupEntity call({
    String? id,
    DistributorEntity? distributor,
    List<ShoppingCartItemEntity>? productCartList,
    Object? object,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfShoppingCartItemGroupEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfShoppingCartItemGroupEntity.copyWith.fieldName(...)`
class _$ShoppingCartItemGroupEntityCWProxyImpl
    implements _$ShoppingCartItemGroupEntityCWProxy {
  const _$ShoppingCartItemGroupEntityCWProxyImpl(this._value);

  final ShoppingCartItemGroupEntity _value;

  @override
  ShoppingCartItemGroupEntity id(String? id) => this(id: id);

  @override
  ShoppingCartItemGroupEntity distributor(DistributorEntity distributor) =>
      this(distributor: distributor);

  @override
  ShoppingCartItemGroupEntity productCartList(
          List<ShoppingCartItemEntity> productCartList) =>
      this(productCartList: productCartList);

  @override
  ShoppingCartItemGroupEntity object(Object? object) => this(object: object);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShoppingCartItemGroupEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShoppingCartItemGroupEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ShoppingCartItemGroupEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? distributor = const $CopyWithPlaceholder(),
    Object? productCartList = const $CopyWithPlaceholder(),
    Object? object = const $CopyWithPlaceholder(),
  }) {
    return ShoppingCartItemGroupEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      distributor:
          distributor == const $CopyWithPlaceholder() || distributor == null
              ? _value.distributor
              // ignore: cast_nullable_to_non_nullable
              : distributor as DistributorEntity,
      productCartList: productCartList == const $CopyWithPlaceholder() ||
              productCartList == null
          ? _value.productCartList
          // ignore: cast_nullable_to_non_nullable
          : productCartList as List<ShoppingCartItemEntity>,
      object: object == const $CopyWithPlaceholder()
          ? _value.object
          // ignore: cast_nullable_to_non_nullable
          : object as Object?,
    );
  }
}

extension $ShoppingCartItemGroupEntityCopyWith on ShoppingCartItemGroupEntity {
  /// Returns a callable class that can be used as follows: `instanceOfShoppingCartItemGroupEntity.copyWith(...)` or like so:`instanceOfShoppingCartItemGroupEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ShoppingCartItemGroupEntityCWProxy get copyWith =>
      _$ShoppingCartItemGroupEntityCWProxyImpl(this);
}
