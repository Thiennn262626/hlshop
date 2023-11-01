import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/app_item_counter/app_item_counter.dart';
import 'package:hlshop/app/common/presentation/widgets/app_item_counter/app_item_counter_args.dart';
import 'package:hlshop/app/features/product/presentation/item/product_item.dart';
import 'package:hlshop/app/features/product/presentation/variant/select_variant/cubit/product_select_variant_cubit.dart';
import 'package:hlshop/app/features/product/self.dart';

class ProductSelectVariantBody extends StatelessWidget {
  const ProductSelectVariantBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<ProductSelectVariantCubit, ProductSelectVariantState>(
          builder: (context, state) {
            final selectVariant =
                context.read<ProductSelectVariantCubit>().getSelectVariant();
            final item = context.read<ProductSelectVariantCubit>().product;
            if (selectVariant == null) {
              return ProductItem(
                item:
                    context.read<ProductSelectVariantCubit>().product.copyWith(
                          listedPrice: selectVariant?.listedPrice,
                          salePrice: selectVariant?.price,
                          imgList: [
                            item.imgList?.first,
                          ].filterNotNull().toList(),
                        ),
                layoutType: ProductItemLayoutType.layoutTile2,
              );
            }
            return ProductItem(
              item: context.read<ProductSelectVariantCubit>().product.copyWith(
                    listedPrice: selectVariant?.listedPrice,
                    salePrice: selectVariant?.price,
                    imgList: [
                      selectVariant?.img,
                    ].filterNotNull().toList(),
                  ),
              layoutType: ProductItemLayoutType.layoutTile2,
            );
          },
        ).pDefault(),
        LimitedBox(
          maxHeight: MediaQuery.of(context).size.height * 0.45,
          child:
              BlocBuilder<ProductSelectVariantCubit, ProductSelectVariantState>(
            builder: (context, state) {
              final listAttribute = state.item
                  .filterAsList((item) => item.values?.isNotEmpty ?? false);
              return ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ProductAttribute(
                    attribute: listAttribute[index],
                  );
                },
                separatorBuilder: (context, index) => Gaps.vGap8,
                itemCount: listAttribute.length,
              );
            },
          ),
        ),
        const AppDivider.thin(),
        Row(
          children: [
            LocaleKeys.product_Quantity.tr().text.make().expand(),
            AppCartItemCounter(
              submitCallBack: AppCartItemCounterSubmitCallBack(
                onValueSubmit: (value) {
                  context.read<ProductSelectVariantCubit>().updateQuantity(
                        value,
                      );
                },
                onDeleteItem: () {},
              ),
            ),
          ],
        ).pxDefault().py12(),
      ],
    );
  }
}

class ProductAttribute extends StatelessWidget {
  const ProductAttribute({
    super.key,
    required this.attribute,
  });

  final ProductAttributeEntity attribute;

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      title: attribute.name ?? '',
      crossAxisAlignment: CrossAxisAlignment.stretch,
      child: BlocBuilder<ProductSelectVariantCubit, ProductSelectVariantState>(
        builder: (context, state) {
          final variantCubit = context.read<ProductSelectVariantCubit>();
          return Wrap(
            spacing: 8,
            runSpacing: 12,
            children: attribute.values.mapAsListIndexed(
              (item, index) {
                if (variantCubit.checkDisableAttribute(item)) {
                  return ProductAttributeValue(
                    item: item,
                    layoutType: ProductVariantItemLayoutType.layoutTileDisable,
                  );
                } else {
                  return ProductAttributeValue(
                    item: item,
                    layoutType: ProductVariantItemLayoutType.layoutTile1,
                    args: ProductAttributeValueArgs(
                      isSelected: variantCubit.isSelected(item),
                      onPressed: () {
                        variantCubit.selectValue(item);
                      },
                    ),
                  );
                }
              },
            ),
          );
        },
      ).pxDefault(),
    );
  }
}
