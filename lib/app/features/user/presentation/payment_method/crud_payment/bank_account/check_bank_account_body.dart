import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

class InfoBankAccountBody extends StatelessWidget {
  const InfoBankAccountBody({super.key, required this.item});

  final BankAccountEntity? item;

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoPaymentTile(
            label: 'Số CMND/CCCD'.tr(),
            title: item!.id!.tr(),
          ),
          InfoPaymentTile(
            label: 'Tên ngân hàng'.tr(),
            title: item!.name!.tr(),
          ),
          InfoPaymentTile(
            label: 'Tên chi nhánh'.tr(),
            title: item!.branchName!.tr(),
          ),
          InfoPaymentTile(
            label: 'Số tài khoản'.tr(),
            title: item!.numberAccount!.hideNumberAccount()!.tr(),
          ),
          InfoPaymentTile(
            label: 'Tên chủ tài khoản'.tr(),
            title: item!.ownerName!.tr(),
          ),
        ].withDivider(
          const AppDivider.thin(),
        ),
      ).pDefault(),
    );
  }
}
