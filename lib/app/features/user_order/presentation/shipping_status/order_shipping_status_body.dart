import 'package:flutter/cupertino.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:timelines/timelines.dart';

class OrderShippingStatusBody extends StatelessWidget {
  const OrderShippingStatusBody({super.key});
  @override
  Widget build(BuildContext context) {
    Timeline.tileBuilder(
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.alternating,
        contentsBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Timeline Event $index'
                .text
                .titleMedium(context)
                .colorPrimary(context)
                .make(),
            '14/2/2023'.text.bodySmall(context).colorHint(context).make(),
          ],
        ).px12(),
        itemCount: 1,
      ),
    );
    return BlocBuilder<UserOrderDetailCubit, UserOrderDetailState>(
      builder: (context, state) {
        final item = state.order;
        return GestureDetector(
          onTap: () {
            context.pushRoute(UserOrderTrackingDetailRoute(order: item));
            //context.pushRoute(ProductDetailRoute(product: ProductEntity()));
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
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              'Timeline Eventtt $index'
                  .text
                  .titleMedium(context)
                  .colorPrimary(context)
                  .make(),
              '14/2/2023'.text.bodySmall(context).colorHint(context).make(),
            ].withDivider(Gaps.vGap4),
          ).px8();
        },
        indicatorBuilder: (_, index) {
          return DotIndicator(
            size: 8,
            color: context.theme.primaryColor,
          );
        },
      ),
    );

    // return Flexible(
    //   child: Timeline.tileBuilder(
    //     theme: TimelineThemeData(
    //       nodePosition: 0,
    //       indicatorPosition: 0,
    //       indicatorTheme: IndicatorThemeData(
    //         size: 8.0,
    //         color: context.theme.primaryColor,
    //       ),
    //       connectorTheme: ConnectorThemeData(
    //         space: 20.0,
    //         thickness: 1,
    //         color: context.themeColor.greyLighter,
    //       ),
    //     ),
    //     builder: TimelineTileBuilder.fromStyle(
    //       contentsAlign: ContentsAlign.alternating,
    //       contentsBuilder: (context, index) => Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           'Timeline Event $index'
    //               .text
    //               .titleMedium(context)
    //               .colorPrimary(context)
    //               .make(),
    //           '14/2/2023'.text.bodySmall(context).colorHint(context).make(),
    //         ],
    //       ).px12().backgroundColor(Colors.red),
    //       itemCount: 1,
    //       itemExtent: 52,
    //       indicatorPositionBuilder: (context, index) => index == 0 ? 0.0 : 1.0,
    //     ),
    //   ),
    // );
  }

  bool isComplete(int index) {
    return false;
  }
}
