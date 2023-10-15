import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/presentation/group_item/user_order_group_item.dart';

class UserOrderListGroup extends StatelessWidget {
  const UserOrderListGroup({super.key, required this.order});

  final OrderEntity order;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: order.orderItemList?.length ?? 0,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const AppDivider.thin(),
      itemBuilder: (context, index) {
        final orderItem = order.orderItemList.getOrNull(index);
        if (orderItem == null) {
          return const SizedBox.shrink();
        }
        return UserOrderGroupItem(
          order: order,
          limitItemShow: 2,
          orderData: orderItem,
        );
      },
    );
  }
}
