import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/data/model/user_order_base_model.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_entities.dart';
import 'package:hlshop/app/features/user_order/presentation/main/cubit/user_order_cubit.dart';
import 'package:hlshop/app/features/user_order/presentation/main/user_order_tab.dart';

class UserOrderBody extends StatelessWidget {
  const UserOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserOrderCubit, UserOrderState>(
      builder: (context, state) {
        return DefaultTabController(
          length: MsOrderStatus.values.length,
          child: Column(
            children: [
              TabBarWrapperUnderLine(
                child: AppTabBar(
                  onTap: (p0) {},
                  padding: Dimens.edge_x,
                  tabs: OrderStatus.values.mapAsList(
                    (item) {
                      return Tab(
                        child: BlocBuilder<UserOrderCubit, UserOrderState>(
                          builder: (context, state) {
                            final count =
                                state.userOrderCountList.getOrNull(item.index);
                            return '${item.displayValue} ${(count ?? 0) > 0 ? '($count)' : ''}'
                                .tr()
                                .text
                                .make();
                          },
                        ),
                      );
                    },
                  ),
                  isScrollable: true,
                ),
              ),
              TabBarView(
                children: OrderStatus.values.mapAsList(
                  (orderStatus) => UserOrderTab(orderStatus: orderStatus),
                ),
              ).expand(),
            ],
          ),
        );
      },
    );
  }
}
