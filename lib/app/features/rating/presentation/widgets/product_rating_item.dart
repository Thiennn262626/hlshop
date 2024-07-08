import 'package:hlshop/all_file/all_file.dart';class ProductRatingItem extends StatelessWidget {  const ProductRatingItem({    super.key,    required this.product,    this.onPressed,    this.margin,    this.args = const ProductItemArgs(),  });  final ProductEntity product;  final EdgeInsetsGeometry? margin;  final VoidCallback? onPressed;  final ProductItemArgs args;  @override  Widget build(BuildContext context) {    return CardCupertinoEffect(      onPressed: () async {        print('ProductRatingItem onPressed ${product.id}');        await context.pushRoute(ProductDetailRoute(product: product));      },      child: Container(        padding: Dimens.edge_XS2,        margin: margin ?? Dimens.edge_y,        height: 60,        width: MediaQuery.of(context).size.width,        decoration: AppDecor.cardGrayBorder(context).copyWith(          color: context.themeColor.primaryNeutral,          borderRadius: Dimens.rad_border_circular,        ),        child: Row(          mainAxisSize: MainAxisSize.min,          crossAxisAlignment: CrossAxisAlignment.stretch,          children: [            Container(              decoration: BoxDecoration(                border: Border.all(                  color: context.themeColor.greyLighter,                ),                borderRadius: Dimens.rad_border_circular_XS2,              ),              clipBehavior: Clip.hardEdge,              child: AppImg(                product.img,              ),            ).aspectRatio(1),            Gaps.hGap12,            _buildContent(              context: context,            ).expand(),          ],        ),      ),    );  }  Column _buildContent({    required BuildContext context,  }) {    return Column(      crossAxisAlignment: CrossAxisAlignment.start,      mainAxisAlignment: MainAxisAlignment.center,      children: [        product.name?.textAuto            .bodySmall(context)            .colorDarkest(context)            .medium            .maxLines(2)            .ellipsis            .make()            .pb2()            .minHeight(22),        Row(          children: [            ProductPriceWithType(              price: product.price,              priceStyle: context.bodyMedium?.copyWith(                fontWeight: FontWeight.w500,                fontSize: context.textXS,                color: context.themeColor.greyDark,              ),              type: product.type,              typeStyle: context.bodySmall?.copyWith(                color: context.themeColor.grey,              ),            ).expand(),            args.action,          ].withDivider(Gaps.hGap8),        ),      ].filterNotNullList(),    );  }}