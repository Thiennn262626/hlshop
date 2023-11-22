import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/text/app_text_required.dart';
import 'package:hlshop/app/features/user/self.dart';

class CrudAddressBody extends StatelessWidget {
  const CrudAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    final addressCubit = context.read<CrudAddressCubit>();
    return AppScrollBody.withSpacing(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          'Người nhận'.tr().text.titleMedium(context).make(),
          const AppTextFieldReactive(
            formControlName: UserAddressEntity.fullNameKey,
          ),
          'Số điện thoại'.tr().text.titleMedium(context).make(),
          const AppTextFieldReactive(
            formControlName: UserAddressEntity.phoneKey,
          ),
          AppTextRequired(
            child: 'Địa chỉ'.tr().text.titleMedium(context).make(),
          ),
          AddressSelectField<CityEntity>(
            formControlName: UserAddressEntity.cityKey,
            title: 'Chọn tỉnh/thành phố'.tr(),
            itemToString: (city) => city?.name ?? '',
            searchListData: (offset, limit, search) =>
                getIt<AddressRepo>().getCityInfo(
              offset: offset,
              limit: limit,
              search: search,
            ),
          ),
          ReactiveStatusListenableBuilder(
            formControlName: UserAddressEntity.cityKey,
            builder: (context, control, child) {
              final city = addressCubit.form.getValue<CityEntity>(
                UserAddressEntity.cityKey,
              );
              return AddressSelectField<DistrictEntity>(
                isDisable: city == null,
                formControlName: UserAddressEntity.districtKey,
                title: 'Chọn quận/huyện'.tr(),
                itemToString: (district) => district?.name ?? '',
                searchListData: (offset, limit, search) {
                  return getIt<AddressRepo>().getDistrictInfo(
                    cityID: city?.id ?? '',
                    offset: offset,
                    limit: limit,
                    search: search,
                  );
                },
              );
            },
          ),
          ReactiveStatusListenableBuilder(
            formControlName: UserAddressEntity.districtKey,
            builder: (context, control, child) {
              final district = addressCubit.form.getValue<DistrictEntity>(
                UserAddressEntity.districtKey,
              );
              return AddressSelectField<WardEntity>(
                isDisable: district == null,
                formControlName: UserAddressEntity.wardKey,
                title: 'Chọn phường/xã'.tr(),
                itemToString: (ward) => ward?.name ?? '',
                searchListData: (offset, limit, search) {
                  return getIt<AddressRepo>().getWardInfo(
                    districtID: district?.id ?? '',
                    offset: offset,
                    limit: limit,
                    search: search,
                  );
                },
              );
            },
          ),
          AppTextFieldReactive(
            formControlName: UserAddressEntity.fullAddressKey,
            minLines: 3,
            maxLines: 4,
            decoration: AppTextFieldTheme.primary(context).copyWith(),
          ),
          AppTextRequired(
            child: 'Loại địa chỉ'.tr().text.titleMedium(context).make(),
          ),
          Row(
            children: [
              AppRadioReactive<AddressType>(
                formControlName: UserAddressEntity.addressTypeKey,
                value: AddressType.home,
                label: AddressType.home.displayValue.tr(),
              ).objectCenterLeft().expand(),
              Gaps.hGap16,
              AppRadioReactive<AddressType>(
                formControlName: UserAddressEntity.addressTypeKey,
                value: AddressType.office,
                label: AddressType.office.displayValue.tr(),
              ).objectCenterLeft().expand(),
            ],
          ),
          const AppDivider.thin(),
          if (addressCubit.isEdit) _buildDeleteBtn(context),
        ].withDivider(Gaps.vGap8),
      ).pxDefault(),
    );
  }

  Widget _buildDeleteBtn(BuildContext context) {
    return AppButtonText(
      color: context.themeColor.error,
      label: 'Xoá địa chỉ'.tr(),
      leading: Icon(
        PhosphorIcons.trash,
        color: context.themeColor.error,
      ),
      onPressed: () {
        context.read<CrudAddressCubit>().deleteAddress();
      },
    ).objectCenter();
  }
}
