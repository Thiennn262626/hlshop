import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/bloc/user_bloc.dart';

class ProductTitleHeader extends StatelessWidget {
  const ProductTitleHeader({
    super.key,
    this.product,
  });

  final ProductEntity? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          product?.name?.text.titleLarge(context).maxLines(3).ellipsis.make() ??
              const SizedBox(),
          Gaps.vGap8,
          product?.shortDescription?.text.maxLines(2).ellipsis.make() ??
              const SizedBox(),
          Row(
            children: [
              ProductPriceWithType(
                price: product?.price,
                priceStyle: context.textTheme.titleLarge?.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
                type: product?.type,
              ).expand(),
              BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state.userEntity != null) {
                    final favorite =
                        context.read<ProductDetailCubit>().state.isSubscribed;
                    return AppButtonIcon(
                      icon: favorite == true
                          ? PhosphorIcons.heart_fill
                          : PhosphorIcons.heart,
                      iconSize: favorite == true ? 32 : 32,
                      iconColor:
                          favorite == true ? const Color(0xffff6b6b) : null,
                      onPressed: () {
                        if (favorite == true) {
                          context
                              .read<ProductDetailCubit>()
                              .onUnSubcribeProduct();
                        } else {
                          context
                              .read<ProductDetailCubit>()
                              .onSubcribeProduct();
                        }
                      },
                    );
                  }
                  return AppButtonIcon(
                    icon: PhosphorIcons.heart,
                    iconSize: 32,
                    onPressed: () {},
                  );
                },
              ).pxDefault(),
              AppButtonIcon(
                icon: AppIcon.share,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
