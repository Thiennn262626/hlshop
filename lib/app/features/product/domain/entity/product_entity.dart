import 'package:hlshop/all_file/all_file.dart';

part 'product_entity.g.dart';

part 'product_variation.dart';

@CopyWith(copyWithNull: true)
class ProductEntity {
  const ProductEntity({
    this.id = '',
    this.slug,
    this.sku,
    this.imgList,
    this.name,
    this.description,
    this.shortDescription,
    this.price,
    this.type,
    this.status,
    this.listedPrice,
    this.object,
    this.categories,
    this.regularPrice,
    this.salePrice,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.variations,
    this.madeIn,
    this.productUses,
    this.notes,
    this.distributor,
    this.quantity,
    this.ingredient,
    this.objectsOfUse,
    this.preserve,
    this.instructionsForUse,
    this.height,
    this.width,
    this.length,
    this.weight,
  });

  factory ProductEntity.demo() {
    return ProductEntity(
      id: '1',
      name: 'Dummy product',
      imgList: [
        const ImageEntity(
          src: '',
        ),
      ],
      description:
          'Hi',
      price: '100000'.toPriceUnit,
      type: 'chai',
      listedPrice: '200000'.toPriceUnit,
    );
  }

  final Object? object;
  final String? id;
  final String? slug;
  final String? sku;

  final DistributorEntity? distributor;

  final List<ImageEntity>? imgList;
  final String? name;
  final String? description;
  final String? shortDescription;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? price;
  final String? type;
  final String? status;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? listedPrice;
  final List<ProductCategoryEntity>? categories;
  final List<ProductVariantEntity>? variations;

  final String? madeIn;
  final String? productUses;
  final String? notes;

  final String? ingredient;
  final String? objectsOfUse;
  final String? preserve;
  final String? instructionsForUse;
  final int? height;
  final int? width;
  final int? length;
  final int? weight;

  final String? regularPrice;
  @JsonKey(fromJson: priceUnitFromAny, toJson: priceUnitToJson)
  final PriceUnit? salePrice;
  final String? priceHtml;

  final bool? onSale;
  final bool? purchasable;
  final int? totalSales;

  final bool? reviewsAllowed;
  final String? averageRating;
  final int? ratingCount;
  final int? quantity;

  String? get img => imgList.firstOrNull?.src;

  List<String>? get imgSrcList =>
      imgList?.map((e) => e.src).filterNotNullList();

  ProductCategoryEntity? get category => categories?.firstOrNull;

  ProductVariantEntity? get variation => variations?.firstOrNull;
}

@CopyWith(copyWithNull: true)
class ProductFilterData {
  const ProductFilterData({
    this.relatedProductID,
    this.sellerID,
    this.productCategory,
    this.orderByType,
    this.search,
    this.type,
    this.showType,
    this.minAmount,
    this.maxAmount,
  });

  final OrderByType? orderByType;
  final String? search;
  final ProductCategoryEntity? productCategory;
  final String? relatedProductID;
  final String? sellerID;
  final String? minAmount;
  final String? maxAmount;

  final ProductListType? type;
  final ProductListShowType? showType;

  //key form
  static const String categoryKey = 'categoryKey';
  static const String minKey = 'minKey';
  static const String maxKey = 'maxKey';
  static const String typeListKey = 'typeListKey';
}

@JsonEnum(valueField: 'rawValue')
enum ProductType {
  home(0),
  office(1),
  other(2);

  final int rawValue;

  const ProductType(this.rawValue);

  String get displayValue {
    switch (this) {
      case ProductType.home:
        return 'Cốc chén';
      case ProductType.office:
        return 'Đũa';
      case ProductType.other:
        return 'Khác';
      default:
        return '';
    }
  }
}
