import 'package:flutter/cupertino.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/presentation/detail/cubit/user_order_detail_cubit.dart';
import 'package:timelines/timelines.dart';

class OrderShippingStatusFirst extends StatelessWidget {
  const OrderShippingStatusFirst({super.key});
  @override
  Widget build(BuildContext context) {
    Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.alternating,
        itemCount: 1,
      ),
    );
    return BlocBuilder<UserOrderDetailCubit, UserOrderDetailState>(
      builder: (context, state) {
        final item = state.order;
        return GestureDetector(
          onTap: () {
            context.pushRoute(UserOrderTrackingDetailRoute(order: item));
          },
          child: SectionContainer(
            titlePadding: EdgeInsets.zero,
            leading: const Icon(PhosphorIcons.truck).pr8(),
            trailing: const Icon(
              CupertinoIcons.right_chevron,
            ),
            title: LocaleKeys.userOrder_ShippingInfo.tr(),
            space: 8,
            child: const ShippingTimeLine(),
          ).pxDefault().pt16(),
        );
      },
    );
  }
}

class ShippingTimeLine extends StatelessWidget {
  const ShippingTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
        nodePosition: 0,
        indicatorTheme: IndicatorThemeData(
          size: 8,
          color: context.theme.primaryColor,
        ),
        connectorTheme: ConnectorThemeData(
          space: 16,
          thickness: 1,
          color: context.themeColor.greyLighter,
        ),
      ),
      builder: TimelineTileBuilder.connected(
        indicatorPositionBuilder: (context, index) => 0.3,
        contentsAlign: ContentsAlign.alternating,
        lastConnectorBuilder: (context) => SolidLineConnector(
          color: context.themeColor.greyLighter,
        ),
        itemCount: 1,
        itemExtent: 52,
        contentsBuilder: (_, index) {
          return BlocBuilder<UserOrderDetailCubit, UserOrderDetailState>(
            builder: (context, state) {
              final item = state.orderTrackingStatus;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  item?.getOrderStatusTracking
                      .toString()
                      .text
                      .titleMedium(context)
                      .colorPrimary(context)
                      .make(),
                  item?.getActionDate
                      .toString()
                      .text
                      .bodySmall(context)
                      .colorHint(context)
                      .make(),
                ].withDivider(Gaps.vGap4),
              ).px8();
            },
          );
        },
        indicatorBuilder: (_, index) {
          return DotIndicator(
            size: 8,
            color: context.theme.primaryColor,
          );
        },
      ),
    );
  }

  bool isComplete(int index) {
    return false;
  }
}
