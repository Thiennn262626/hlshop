import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/presentation/group_item/user_order_list_group.dart';
import 'package:hlshop/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';
import 'package:hlshop/app/features/user_order/self.dart';

class UserOrderTab extends StatelessWidget {
  const UserOrderTab({super.key, required this.orderStatus});

  final OrderStatus orderStatus;

  @override
  Widget build(BuildContext context) {
    return PagingList<OrderEntity>(
      pagingController:
          context.read<UserOrderCubit>().controllerMap[orderStatus],
      fetchListData: (offset, limit) {
        return getIt<UserOrderRepo>().getOrderList(
          orderStatus: orderStatus,
          offset: offset,
          limit: limit,
        );
      },
      itemBuilder: (context, item, index) {
        return UserOrderListGroup(
          order: item,
        );
      },
      separatorBuilder: (context, index) => const AppDivider(),
      noItemsFoundIndicatorBuilder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.common.emptyBox.svg(),
            Gaps.vGap16,
            LocaleKeys.userOrder_NoOrderYet.tr().text.make(),
          ],
        );
      },
    );
  }
}
