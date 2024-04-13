import 'package:hlshop/all_file/all_file.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: AppTextField(
        onChanged: (value) {
          context.read<ProductSearchCubit>().onSearchChange(ProductFilterData(
                search: value,
                type: context.read<ProductSearchCubit>().state.filterData?.type,
              ));
        },
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
            borderSide:
                context.theme.inputDecorationTheme.focusedBorder!.borderSide,
          ),
          // contentPadding: EdgeInsets.zero,
          hintText: context.read<ProductSearchCubit>().searchHint?.tr(),
          prefixIcon: const Icon(PhosphorIcons.magnifying_glass).pl4(),
        ),
      ),
    );
  }
}
