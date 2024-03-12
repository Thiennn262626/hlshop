import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_page.dart';

class UserReceiveAddressSection extends StatelessWidget {
  const UserReceiveAddressSection({
    super.key,
    required this.address,
  });

  final UserAddressEntity? address;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CheckoutBloc>();
    return DecoratedBox(
      decoration: AppDecor.grayBorder(context),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                PhosphorIcons.map_pin_line,
                color: context.themeColor.greyLighter,
              ),
              'Địa chỉ nhận hàng'.tr().text.titleMedium(context).make(),
            ].withDivider(Gaps.hGap8),
          ).p12(),
          const _Divider(),
          BlocBuilder<CheckoutBloc, CheckoutState>(
            builder: (context, state) {
              return AppTile(
                padding: Dimens.edge_XS,
                title: Builder(
                  builder: (context) {
                    if (state.userAddress == null) {
                      return 'Thêm địa chỉ nhận hàng'.tr().text.make();
                    }
                    return UserAddressItem(
                      address: state.userAddress ??
                          const UserAddressEntity().empty(),
                      canSelectPrimary: false,
                    );
                  },
                ),
                onPressed: () async {
                  await context.pushRoute(
                    ReceiveAddressRoute(
                      user: const UserEntity(),
                      canSelectPrimary: true,
                    ),
                  );
                  bloc.add(
                    const CheckoutEvent.loadDefaultAddress(),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class UserReceiveAddress extends StatelessWidget {
  const UserReceiveAddress({
    super.key,
    required this.address,
  });

  final UserAddressEntity address;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          PhosphorIcons.map_pin_line,
        ).pr12(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            'Địa chỉ nhận hàng'.tr().text.titleMedium(context).make().pt2(),
            Gaps.vGap8,
            UserAddressItem(
              address: address,
              canSelectPrimary: false,
            ),
          ],
        ).expand(),
      ],
    );
  }
}

class UserAddressItem extends StatefulWidget {
  const UserAddressItem({
    super.key,
    required this.address,
    required this.canSelectPrimary,
    this.defaultAddress,
  });

  final UserAddressEntity address;
  final bool canSelectPrimary;
  final String? defaultAddress;

  @override
  State<UserAddressItem> createState() => _UserAddressItemState();
}

class _UserAddressItemState extends State<UserAddressItem> {
  bool canSelectPrimary = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (widget.canSelectPrimary == true)
                  AbsorbPointer(
                    child: Radio<String?>(
                      value: widget.address.id,
                      groupValue: widget.defaultAddress,
                      onChanged: (value) {},
                    ),
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.address.addressAndPhone.isNotNullOrBlank)
                      widget.address.addressAndPhone!.text
                          .colorDark(context)
                          .maxLines(1)
                          .ellipsis
                          .make(),
                    if (widget.address.addressDetail.isNotNullOrBlank)
                      widget.address.addressDetail!.text
                          .colorDark(context)
                          .maxLines(1)
                          .ellipsis
                          .make(),
                    if (widget.address.addressType != null)
                      widget.address.addressType?.displayValue
                          .tr()
                          .text
                          .colorPrimary(context)
                          .make()
                          .px12()
                          .py4()
                          .backgroundColor(context.themeColor.primaryLighter)
                          .cornerRadius(Dimens.rad_XL4)
                          .pt4(),
                  ].withDivider(Gaps.vGap4),
                ).expand(),
              ],
            ).expand(),
            if (widget.canSelectPrimary == true)
              Row(
                children: [
                  AppButtonText(
                    onPressed: () async {
                      await context.pushRoute(
                        CrudAddressRoute(
                          type: CrudAddressType.edit,
                          initialAddress: widget.address,
                        ),
                      );
                    },
                    child: 'Sửa'.text.make(),
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }

  void _showSuccessDialog(BuildContext context) {
    DialogUtils.showSuccessDialog(
      context: context,
      content: 'Đổi địa chỉ mặc định thành công',
      onAutoDismiss: () {
        context.router.pop(true);
      },
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        height: 3,
        child: AppMargin(
          horizontal: -10,
          child: Transform(
            transform: Matrix4.skewX(0.7),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 24,
                  child: Row(
                    children: [
                      Container(
                        color: const Color(0xFFFEB1B1),
                      ).expand(),
                      Container(
                        color: const Color(0xFFB1D0FE),
                      ).expand(),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Gaps.hGap4,
              itemCount: MediaQuery.of(context).size.width ~/ 20,
            ),
          ),
        ),
      ),
    );
  }
}
