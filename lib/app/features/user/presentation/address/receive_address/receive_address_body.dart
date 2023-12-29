import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_page.dart';
import 'package:hlshop/app/features/user/presentation/address/receive_address/cubit/receive_address_cubit.dart';
import 'package:hlshop/app/features/user/self.dart';

class ReceiveAddressBody extends StatelessWidget {
  const ReceiveAddressBody(
      {super.key, required this.canSelectPrimary, this.defauAddress});

  final String? defauAddress;
  final bool canSelectPrimary;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ReceiveAddressCubit>();
    return PagingList<UserAddressEntity>(
      pagingController: cubit.pagingController,
      padding: Dimens.edge,
      separatorBuilder: (context, index) => const AppDivider.thin().py12(),
      itemBuilder: (context, item, index) {
        return CardCupertinoEffect(
          onPressed: () async {
            if (canSelectPrimary == false) {
              await context.pushRoute(
                CrudAddressRoute(
                  type: CrudAddressType.edit,
                  initialAddress: item,
                ),
              );
              cubit.loadData();
            } else {
              context.read<ReceiveAddressCubit>().addDefault(item.id ?? '');
            }
          },
          child: UserAddressItem(
            canSelectPrimary: canSelectPrimary,
            address: item,
            defaultAddress: index == 0 ? item.id : null,
          ),
        );
      },
      fetchListData: (offset, limit) {
        return getIt<UserRepo>().getUserAddressList(
          offset: offset,
          limit: limit,
        );
      },
      noItemsFoundIndicatorBuilder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.common.emptyBox.svg(),
            Gaps.vGap16,
            'Không có địa chỉ nhận hàng nào'.tr().text.make(),
          ],
        );
      },
    );
  }
}
