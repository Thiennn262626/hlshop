import 'package:hlshop/all_file/all_file.dart';

class UserOrderDetailBody extends StatelessWidget {
  const UserOrderDetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserOrderDetailCubit, UserOrderDetailState>(
      builder: (context, state) {
        final item = state.order;
        final addressreceiver = item?.userAddressEntity;
        return AppScrollBody.withSpacing(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  'Mã đơn hàng: #{}'
                      .tr(args: [
                        item?.orderCode ?? '',
                      ])
                      .text
                      .titleMedium(context)
                      .make()
                      .pxDefault(),
                  const AppDivider.thin().pDefault(),
                  UserReceiveAddress(
                    address: addressreceiver ?? const UserAddressEntity(),
                  ).pxDefault().pb16(),
                ],
              ),
              const OrderShippingStatusFirst(),
              BlocProvider<UserOrderCubit>(
                create: (context) => UserOrderCubit()..fetchItemList(),
                child: UserOrderGroupItem(
                  showStatus: false,
                  orderData: item,
                  isDetail: true,
                ),
              ),
              AppTileText.semiBold(
                padding: Dimens.edge,
                title: LocaleKeys.payment_PaymentMethod.tr(),
                subtitle: _getPaymentMethodText(item?.paymentMethod ?? 0).tr(),
              ),
              OrderPaymentDetail(order: item).pyDefault(),
              // if (item?.orderStatus == 0 &&
              //     (item?.paymentMethod == 0 ||
              //         (item?.paymentMethod == 1 && item?.finishPay == false)))
              if (item?.orderStatus == 0 || item?.orderStatus == 1)
                Row(
                  children: [
                    AppButton(
                      label: 'Hủy đơn hàng'.tr(),
                      style: AppButtonTheme.color(context,
                          color: Colors.deepOrangeAccent),
                      onPressed: () async {
                        await context
                            .read<UserOrderDetailCubit>()
                            .cancelOrder();
                        await context.popRoute(true);
                      },
                    ).py16().expand(),
                  ],
                ).pxDefault(),
              if (item?.orderStatus == 3)
                Row(
                  children: [
                    AppButton(
                      label: 'Nhận hàng'.tr(),
                      onPressed: () async {
                        await context
                            .read<UserOrderDetailCubit>()
                            .confirmOrderSuccess();
                        await context.popRoute(true);
                      },
                    ).py16().expand(),
                    const AppDivider().pxDefault(),
                    AppButton(
                      style: AppButtonTheme.color(context, color: Colors.red),
                      label: 'Trả hàng'.tr(),
                      onPressed: () async {
                        await context
                            .read<UserOrderDetailCubit>()
                            .returnOrder();
                        await context.popRoute(true);
                      },
                    ).py16().expand(),
                  ],
                ).pxDefault(),
              if (item?.orderStatus == 4)
                Row(
                  children: [
                    AppButton(
                      style: AppButtonTheme.color(context,
                          color: context.themeColor.primary),
                      label: item?.canFeedback ?? false
                          ? 'Đánh giá'.tr()
                          : 'Xem đánh giá'.tr(),
                      onPressed: item?.canFeedback ?? false
                          ? () async {
                              if (item is OrderDataEntity) {
                                final rs = await context.pushRoute(
                                  RatingRoute(
                                    orderDataEntity: item,
                                  ),
                                );
                                if (rs == true) {
                                  await context
                                      .read<UserOrderDetailCubit>()
                                      .loadData();
                                }
                              }
                            }
                          : () {
                              context.pushRoute(
                                RatingViewRoute(
                                  orderId: item?.id ?? '',
                                ),
                              );
                            },
                    ).py16().expand(),
                  ],
                ).pxDefault(),
            ].withDivider(const AppDivider()),
          ),
        );
      },
    );
  }
}

String _getPaymentMethodText(int paymentMethod) {
  switch (paymentMethod) {
    case 0:
      return 'Thanh toán khi nhận hàng'.tr();
    case 1:
      return 'Thanh toán qua momo'.tr();
    default:
      return '';
  }
}
