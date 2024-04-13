part of 'ms_product_category_model.dart';

extension MsProductCategoryMapper on MsProductCategory {
  ProductCategoryEntity toEntity() {
    return ProductCategoryEntity(
      id: productCategoryID.toString(),
      name: productCategoryName,
      imgList: [
        ImageEntity(
          src: linkString,
        ),
      ],
    );
  }
}
