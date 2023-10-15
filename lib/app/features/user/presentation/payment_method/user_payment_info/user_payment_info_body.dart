import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

class UserPaymentInfoBody extends StatelessWidget {
  const UserPaymentInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          'Thẻ tín dụng/Ghi nợ (0)'
              .tr()
              .text
              .semiBold
              .lg
              .colorDarkest(context)
              .make()
              .pDefault(),
          AppTileText.medium(
            leading: const DottedBorderIcon(),
            title: 'Thêm thẻ mới'.tr(),
            onPressed: () {
              context.pushRoute(
                CrudCreditCardRoute(),
              );
            },
          ),
          Gaps.vGap12,
          const AppDivider(),
          Gaps.vGap16,
          BlocBuilder<UserPaymentInfoCubit, UserPaymentInfoState>(
            builder: (context, state) {
              final cubit = context.read<UserPaymentInfoCubit>();
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  'Tài khoản ngân hàng (${cubit.countBankAccount})'
                      .tr()
                      .text
                      .semiBold
                      .lg
                      .colorDarkest(context)
                      .make()
                      .pxDefault(),
                  Gaps.vGap8,
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: Dimens.edge,
                    itemBuilder: (context, index) {
                      final item = state.bankAccountList.getOrNull(index);
                      if (item == null) {
                        return const SizedBox.shrink();
                      }
                      return _buildItem(item, context);
                    },
                    separatorBuilder: (context, index) =>
                        const AppDivider.thin().py12(),
                    itemCount: cubit.countBankAccount,
                  ),
                  const AppDivider.thin().px16(),
                ],
              );
            },
          ),
          Gaps.vGap12,
          AppTileText.medium(
            leading: const DottedBorderIcon(),
            title: 'Thêm tài khoản ngân hàng'.tr(),
            onPressed: () {
              context.pushRoute(
                CrudBankAccountRoute(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildItem(PaymentMethodEntity item, BuildContext context) {
    if (item is BankAccountEntity) {
      return BankAccountItem(item: item);
    }
    log('item is not supported');
    return const SizedBox.shrink();
  }
}
