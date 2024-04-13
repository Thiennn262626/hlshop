import 'package:hlshop/all_file/all_file.dart';

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
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.checkoutStatus == const ApiStatus.done()) {
          context
              .read<UserOrderCubit>()
              .controllerMap[OrderStatus.newOrder]!
              .refresh();
        }
      },
      child: PagingList<OrderEntity>(
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
      ),
    );
  }
}
