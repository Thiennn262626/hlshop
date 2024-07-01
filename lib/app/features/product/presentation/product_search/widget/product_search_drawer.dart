import 'package:hlshop/all_file/all_file.dart';

class NavigatorDrawer extends StatelessWidget {
  const NavigatorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final counterButtonStyle = AppButtonTheme.ghostGray(context).copyWith(
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
    );
    return Drawer(
      child: SafeArea(
        child: ReactiveForm(
          formGroup: context.read<ProductSearchCubit>().form,
          child: BlocBuilder<ProductSearchCubit, ProductSearchState>(
            builder: (context, state) {
              return AppScrollBody(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    'Theo danh mục'.tr().text.titleMedium(context).make().py8(),
                    AddressSelectField<ProductCategoryEntity?>(
                      formControlName: ProductFilterData.categoryKey,
                      showSearchBar: false,
                      title: 'Chọn theo danh mục'.tr(),
                      itemToString: (id) => id?.name ?? '',
                      searchListData: (offset, limit, search) =>
                          getIt<ProductCategoryRepo>().getCategoryList(
                        limit: limit,
                        offset: offset,
                      ),
                    ),
                    // 'Khoảng giá'.tr().text.titleMedium(context).make().py8(),
                    // Row(
                    //   children: [
                    //     AppTextFieldReactive(
                    //       hintText:
                    //           state.filterData?.minAmount ?? 'TỐI THIỂU'.tr(),
                    //       formControlName: ProductFilterData.minKey,
                    //     ).flex(),
                    //     const SizedBox(
                    //       width: 16,
                    //     ),
                    //     AppTextFieldReactive(
                    //       hintText:
                    //           state.filterData?.maxAmount ?? 'TỐI ĐA'.tr(),
                    //       formControlName: ProductFilterData.maxKey,
                    //     ).flex()
                    //   ],
                    // ).minHeight(0),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     AppButton(
                    //       style: counterButtonStyle,
                    //       child: '0-100k'.tr().text.make().p4(),
                    //       onPressed: () {
                    //         context
                    //             .read<ProductSearchCubit>()
                    //             .setMinMax('0', '100000');
                    //       },
                    //     ).expand(),
                    //     AppButton(
                    //       style: counterButtonStyle,
                    //       child: '100-200k'.tr().text.make().p4(),
                    //       onPressed: () {
                    //         context
                    //             .read<ProductSearchCubit>()
                    //             .setMinMax('100000', '200000');
                    //       },
                    //     ).expand(),
                    //     AppButton(
                    //       style: counterButtonStyle,
                    //       child: '200-300k'.tr().text.make().p4(),
                    //       onPressed: () {
                    //         context
                    //             .read<ProductSearchCubit>()
                    //             .setMinMax('200000', '300000');
                    //       },
                    //     ).expand(),
                    //   ].withDivider(Gaps.hGap4),
                    // ).py8(),
                    // 'Loại danh mục'.tr().text.titleMedium(context).make().py8(),
                    Row(
                      children: [
                        AppButton(
                          style: AppButtonTheme.ghost(context),
                          label: 'Áp dụng'.tr(),
                          onPressed: () {
                            context.read<ProductSearchCubit>().onFilterChange();
                          },
                        ).py16().expand(),
                      ],
                    ).py4(),
                    Row(
                      children: [
                        AppButton(
                          style:
                              AppButtonTheme.color(context, color: Colors.red),
                          label: 'Hủy'.tr(),
                          onPressed: () {
                            context.read<ProductSearchCubit>().clearFilter();
                          },
                        ).py16().expand(),
                      ],
                    ).py4(),
                  ],
                ).p16(),
              );
            },
          ),
        ),
      ),
    );
  }
}
