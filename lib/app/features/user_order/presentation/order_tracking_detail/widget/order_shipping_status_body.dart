import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user_order/domain/entities/order_status_tracking_entity.dart';
import 'package:timelines/timelines.dart';

class ShippingTimeLine extends StatelessWidget {
  const ShippingTimeLine({super.key, required this.orderStatus});
  final List<OrderStatusTrackingEntity> orderStatus;
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
        indicatorPositionBuilder: (context, index) => 0.22,
        indicatorBuilder: (context, index) {
          return DotIndicator(
            size: 8,
            color: index == 0
                ? context.theme.primaryColor
                : context.themeColor.greyLighter,
          );
        },
        connectorBuilder: (_, index, __) => const SolidLineConnector(),
        contentsAlign: ContentsAlign.alternating,
        itemCount: orderStatus.length,
        itemExtent: 80,
        oppositeContentsBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (index != 0)
              '${orderStatus[index].getOrderStatusTracking}'
                  .text
                  .bold
                  .bodySmall(context)
                  .make(),
            if (index == 0)
              '${orderStatus[index].getOrderStatusTracking}'
                  .text
                  .titleMedium(context)
                  .colorPrimary(context)
                  .make(),
            '${orderStatus[index].getDecription}'
                .text
                .bodySmall(context)
                .colorHint(context)
                .make(),
            '${orderStatus[index].getActionDate}'
                .text
                .bodySmall(context)
                .colorHint(context)
                .make(),
          ].withDivider(Gaps.vGap4),
        ).px8(),
        contentsBuilder: (_, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (index != 0)
              '${orderStatus[index].getOrderStatusTracking}'
                  .text
                  .bold
                  .bodySmall(context)
                  .make(),
            if (index == 0)
              '${orderStatus[index].getOrderStatusTracking}'
                  .text
                  .titleMedium(context)
                  .colorPrimary(context)
                  .make(),
            '${orderStatus[index].getDecription}'
                .text
                .bodySmall(context)
                .colorHint(context)
                .make(),
            '${orderStatus[index].getActionDate}'
                .text
                .bodySmall(context)
                .colorHint(context)
                .make(),
          ].withDivider(Gaps.vGap4),
        ).px8(),
      ),
    );
  }

  bool _isComplete(int index) {
    return false;
  }
}
