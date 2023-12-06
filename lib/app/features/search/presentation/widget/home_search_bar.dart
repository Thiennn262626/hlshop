import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_repo.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: GestureDetector(
        onTap: () {
          context.pushRoute(
            ProductSearchRoute(
              filterData: const ProductFilterData(
                type: ProductListType.newest,
                showType: ProductListShowType.homePage,
              ),
            ),
          );
          // context.pushRoute(
          //   ProductSearchRoute(),
          // );
        },
        child: AbsorbPointer(
          child: AppTextField(
            textInputAction: TextInputAction.search,
            decoration: AppTextFieldTheme.greyStyle(
              context,
            ).copyWith(
              border: OutlineInputBorder(
                borderRadius: Dimens.rad_border_circular,
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: Dimens.rad_border_circular,
                borderSide: context
                        .theme.inputDecorationTheme.focusedBorder?.borderSide ??
                    BorderSide.none,
              ),
              // contentPadding: EdgeInsets.zero,
              hintText: LocaleKeys.common_Search.tr(),
              prefixIcon: const Icon(PhosphorIcons.magnifying_glass).pl4(),
              suffixIcon: const Icon(PhosphorIcons.qr_code),
            ),
          ),
        ),
      ),
    );
  }
}
