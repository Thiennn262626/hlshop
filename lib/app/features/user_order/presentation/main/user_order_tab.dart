import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/domain/repo/user_order_repo.dart';
import 'package:hlshop/app/features/user_order/presentation/group_item/user_order_list_group.dart';
import 'package:hlshop/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';

class UserOrderTab extends StatefulWidget {
  const UserOrderTab({super.key, required this.orderStatus});

  final OrderStatus orderStatus;

  @override
  State<UserOrderTab> createState() => _UserOrderTabState();
}

class _UserOrderTabState extends State<UserOrderTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return PagingList<OrderEntity>(
      pagingController:
          context.read<UserOrderCubit>().controllerMap[widget.orderStatus],
      fetchListData: (offset, limit) => getIt<UserOrderRepo>().getOrderList(
        orderStatus: widget.orderStatus,
        offset: offset,
        limit: limit,
      ),
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
