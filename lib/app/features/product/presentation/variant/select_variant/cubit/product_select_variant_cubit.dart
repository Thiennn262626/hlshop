import 'package:hlshop/all_file/all_file.dart';

part 'product_select_variant_cubit.g.dart';
part 'product_select_variant_state.dart';

class ProductSelectVariantCubit extends RequestItemCubit<
    List<ProductAttributeEntity>, ProductSelectVariantState> {
  ProductSelectVariantCubit({
    List<ProductAttributeEntity>? attributeList,
    required this.product,
  }) : super(ProductSelectVariantState(item: attributeList));

  final ProductEntity product;
  final ProductRepo _repo = getIt();

  @override
  void emitState({
    ItemStatus? status,
    List<ProductAttributeEntity>? item,
    List<ProductAttributeValueEntity>? selectedValueList,
    List<ProductVariantEntity>? variantList,
    ProductVariantEntity? selectedVariant,
    int? quantity,
    Object? error,
    List<String>? idAttributeDisalbeList,
  }) {
    emit(
      state.copyWith(
        status: status ?? state.status,
        item: item ?? state.item,
        selectedValueList: selectedValueList ?? state.selectedValueList,
        variantList: variantList ?? state.variantList,
        selectedVariant: selectedVariant ?? state.selectedVariant,
        quantity: quantity ?? state.quantity,
        error: error,
        idAttributeDisalbeList:
            idAttributeDisalbeList ?? state.idAttributeDisalbeList,
      ),
    );
  }

  @override
  Future<List<ProductAttributeEntity>> fetchApi() async {
    // get product variant
    final productVariantList =
        await _repo.getProductVariantList(productId: product.id);
    emitState(variantList: productVariantList);

    return _repo.getProductAttribute(productId: product.id);
  }

  bool checkDisableAttribute(ProductAttributeValueEntity value) {
    return state.idAttributeDisalbeList
        .filter((item) => item == value.id)
        .isNotNullOrEmpty;
  }

  void getIdAttributeDisalbeList(
      ProductAttributeEntity? attribute, ProductAttributeValueEntity value) {
    final variantList = state.variantList;
    final idAttributeDisalbeList = [...state.idAttributeDisalbeList];
    final affectedVariants = <ProductVariantEntity>[];
    variantList.forEach((variant) {
      variant.variantValueList?.forEach((variantValue) {
        if (variantValue.attributeValue?.id == value.id) {
          affectedVariants.add(variant);
        }
      });
    });
    attribute?.values?.forEach((attributeValue) {
      if (attributeValue.id != value.id) {
        var isDisable = true;
        affectedVariants.forEach((variant) {
          variant.variantValueList?.forEach((variantValue) {
            if (variantValue.attributeValue?.id == attributeValue.id) {
              isDisable = false;
            }
          });
        });
        if (isDisable) {
          idAttributeDisalbeList.add(attributeValue.id ?? '');
        }
      }
    });
    emitState(idAttributeDisalbeList: idAttributeDisalbeList);
  }

  void selectValue(ProductAttributeValueEntity value) {
    final selectedValueList = state.selectedValueList;
    var result = selectedValueList;
    if (result.filter((item) => item.id == value.id).isNotEmpty) {
      result = result.filter((item) => item.id != value.id).toList();
    } else {
      result = [
        // remove value that in the same attribute
        ...result.filter((item) {
          final attribute = getAttributeByValue(item);
          return attribute?.values
                  .filter((item) => item.id == value.id)
                  .isEmpty ??
              true;
        }),
        value
      ];
    }
    emitState(idAttributeDisalbeList: []);
    result.forEach((attributeValue) {
      getIdAttributeDisalbeList(
          getOppositeAttributeByValue(attributeValue), attributeValue);
    });

    emitState(
      selectedValueList: result,
    );
    final selectVariant = getSelectVariant(valueList: result);
    if (selectVariant == null) {
      emit(state.copyWithNull(selectedVariant: true));
    } else {
      emitState(selectedVariant: selectVariant);
    }
  }

  ProductAttributeEntity? getAttributeByValue(
      ProductAttributeValueEntity value) {
    return state.item?.firstWhere((item) {
      return item.values.filter((item) => item.id == value.id).isNotEmpty;
    });
  }

  ProductAttributeEntity? getOppositeAttributeByValue(
      ProductAttributeValueEntity value) {
    return state.item.filterAsList((item) {
      return item.values.filter((item) => item.id == value.id).isEmpty;
    }).firstOrNull;
  }

  bool isSelected(ProductAttributeValueEntity value) {
    return state.selectedValueList
        .filter((item) => item.id == value.id)
        .isNotEmpty;
  }

  ProductVariantEntity? getSelectVariant(
      {List<ProductAttributeValueEntity>? valueList}) {
    final variantList = state.variantList;
    final selectedValueList = valueList ?? state.selectedValueList;
    return variantList.firstOrNullWhere((variant) {
      if (variant.variantValueList.isNullOrEmpty) {
        return false;
      }
      var isSelected = true;

      variant.variantValueList?.forEach((variantValue) {
        bool hasVairantValue = false;
        for (final selectedAttributeValue in selectedValueList) {
          final selectedAttribute = getAttributeByValue(selectedAttributeValue);
          if (selectedAttribute?.id == variantValue.attribute?.id &&
              selectedAttributeValue.id == variantValue.attributeValue?.id) {
            hasVairantValue = true;
          }
        }

        if (!hasVairantValue) {
          isSelected = false;
        }
      });
      return isSelected;
    });
  }

  // updateQuantity
  void updateQuantity(int quantity) {
    emitState(quantity: quantity);
  }

  Future<void> checkAndSetVariant() async {
    final i =
        state.item.filterAsList((item) => item.values?.isNotEmpty ?? false);
    print('checkAndSetVariant20110 ${i.isEmpty}');
    print('checkAndSetVariant20111 ${state.variantList.isNotEmpty}');
    if (i.isEmpty && state.variantList.isNotEmpty) {
      emitState(selectedVariant: state.variantList.first);
    }
  }
}
