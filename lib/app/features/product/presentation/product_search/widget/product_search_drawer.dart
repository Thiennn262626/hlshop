import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_category_repo.dart';
import 'package:hlshop/app/features/product/presentation/product_search/cubit/product_search_cubit.dart';
import 'package:hlshop/app/features/user/presentation/address/widget/address_select_field.dart';

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
                      formControlName: ProductFilterData.category,
                      title: 'Chọn theo danh mục'.tr(),
                      itemToString: (id) => id?.name ?? '',
                      searchListData: (offset, limit, search) =>
                          getIt<ProductCategoryRepo>().getCategoryList(
                        limit: limit,
                        offset: offset,
                      ),
                    ),
                    'Khoảng giá'.tr().text.titleMedium(context).make().py8(),
                    Row(
                      children: [
                        AppTextFieldReactive(
                          hintText: state.minAmount ?? 'TỐI THIỂU'.tr(),
                          formControlName: ProductFilterData.min,
                        ).flex(),
                        const SizedBox(
                          width: 16,
                        ),
                        AppTextFieldReactive(
                          hintText: state.maxAmount ?? 'TỐI ĐA'.tr(),
                          formControlName: ProductFilterData.max,
                        ).flex()
                      ],
                    ).minHeight(0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppButton(
                          style: counterButtonStyle,
                          child: '0-100k'.tr().text.make().p4(),
                          onPressed: () {
                            context
                                .read<ProductSearchCubit>()
                                .setMinMax('0', '100.000');
                          },
                        ).expand(),
                        AppButton(
                          style: counterButtonStyle,
                          child: '100-200k'.tr().text.make().p4(),
                          onPressed: () {
                            context
                                .read<ProductSearchCubit>()
                                .setMinMax('100.000', '200.000');
                          },
                        ).expand(),
                        AppButton(
                          style: counterButtonStyle,
                          child: '200-300k'.tr().text.make().p4(),
                          onPressed: () {
                            context
                                .read<ProductSearchCubit>()
                                .setMinMax('200.000', '300.000');
                          },
                        ).expand(),
                      ].withDivider(Gaps.hGap4),
                    ).py8(),
                    'Loại danh mục'.tr().text.titleMedium(context).make().py8(),
                    Row(
                      children: [
                        AppRadioReactive<ProductType?>(
                          type: RadioBtnType.rec,
                          formControlName: ProductFilterData.minMax,
                          value: ProductType.home,
                          label: ProductType.home.displayValue.tr(),
                        ).expand(),
                        Gaps.hGap16,
                        AppRadioReactive<ProductType?>(
                          formControlName: ProductFilterData.minMax,
                          value: ProductType.office,
                          label: ProductType.office.displayValue.tr(),
                        ).expand(),
                      ],
                    ).py8(),
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
