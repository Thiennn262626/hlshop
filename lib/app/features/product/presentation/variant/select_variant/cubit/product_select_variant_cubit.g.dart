// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_select_variant_cubit.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductSelectVariantStateCWProxy {
  ProductSelectVariantState status(ItemStatus status);

  ProductSelectVariantState item(List<ProductAttributeEntity>? item);

  ProductSelectVariantState error(Object? error);

  ProductSelectVariantState selectedValueList(
      List<ProductAttributeValueEntity> selectedValueList);

  ProductSelectVariantState variantList(List<ProductVariantEntity> variantList);

  ProductSelectVariantState selectedVariant(
      ProductVariantEntity? selectedVariant);

  ProductSelectVariantState quantity(int quantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductSelectVariantState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductSelectVariantState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductSelectVariantState call({
    ItemStatus? status,
    List<ProductAttributeEntity>? item,
    Object? error,
    List<ProductAttributeValueEntity>? selectedValueList,
    List<ProductVariantEntity>? variantList,
    ProductVariantEntity? selectedVariant,
    int? quantity,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductSelectVariantState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductSelectVariantState.copyWith.fieldName(...)`
class _$ProductSelectVariantStateCWProxyImpl
    implements _$ProductSelectVariantStateCWProxy {
  const _$ProductSelectVariantStateCWProxyImpl(this._value);

  final ProductSelectVariantState _value;

  @override
  ProductSelectVariantState status(ItemStatus status) => this(status: status);

  @override
  ProductSelectVariantState item(List<ProductAttributeEntity>? item) =>
      this(item: item);

  @override
  ProductSelectVariantState error(Object? error) => this(error: error);

  @override
  ProductSelectVariantState selectedValueList(
          List<ProductAttributeValueEntity> selectedValueList) =>
      this(selectedValueList: selectedValueList);

  @override
  ProductSelectVariantState variantList(
          List<ProductVariantEntity> variantList) =>
      this(variantList: variantList);

  @override
  ProductSelectVariantState selectedVariant(
          ProductVariantEntity? selectedVariant) =>
      this(selectedVariant: selectedVariant);

  @override
  ProductSelectVariantState quantity(int quantity) => this(quantity: quantity);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductSelectVariantState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductSelectVariantState(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductSelectVariantState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? item = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? selectedValueList = const $CopyWithPlaceholder(),
    Object? variantList = const $CopyWithPlaceholder(),
    Object? selectedVariant = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return ProductSelectVariantState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ItemStatus,
      item: item == const $CopyWithPlaceholder()
          ? _value.item
          // ignore: cast_nullable_to_non_nullable
          : item as List<ProductAttributeEntity>?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      selectedValueList: selectedValueList == const $CopyWithPlaceholder() ||
              selectedValueList == null
          ? _value.selectedValueList
          // ignore: cast_nullable_to_non_nullable
          : selectedValueList as List<ProductAttributeValueEntity>,
      variantList:
          variantList == const $CopyWithPlaceholder() || variantList == null
              ? _value.variantList
              // ignore: cast_nullable_to_non_nullable
              : variantList as List<ProductVariantEntity>,
      selectedVariant: selectedVariant == const $CopyWithPlaceholder()
          ? _value.selectedVariant
          // ignore: cast_nullable_to_non_nullable
          : selectedVariant as ProductVariantEntity?,
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int,
    );
  }
}

extension $ProductSelectVariantStateCopyWith on ProductSelectVariantState {
  /// Returns a callable class that can be used as follows: `instanceOfProductSelectVariantState.copyWith(...)` or like so:`instanceOfProductSelectVariantState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductSelectVariantStateCWProxy get copyWith =>
      _$ProductSelectVariantStateCWProxyImpl(this);

  /// Copies the object with the specific fields set to `null`. If you pass `false` as a parameter, nothing will be done and it will be ignored. Don't do it. Prefer `copyWith(field: null)` or `ProductSelectVariantState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductSelectVariantState(...).copyWithNull(firstField: true, secondField: true)
  /// ````
  ProductSelectVariantState copyWithNull({
    bool item = false,
    bool error = false,
    bool selectedVariant = false,
  }) {
    return ProductSelectVariantState(
      status: status,
      item: item == true ? null : this.item,
      error: error == true ? null : this.error,
      selectedValueList: selectedValueList,
      variantList: variantList,
      selectedVariant: selectedVariant == true ? null : this.selectedVariant,
      quantity: quantity,
    );
  }
}
