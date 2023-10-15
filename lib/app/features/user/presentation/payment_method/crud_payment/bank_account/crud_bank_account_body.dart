import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/payment_entity.dart';

class CrudBankAccountBody extends StatelessWidget {
  const CrudBankAccountBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          'Họ và tên chủ thẻ'.tr().text.titleMedium(context).make(),
          AppTextFieldReactive(
            hintText: 'Họ và tên đầy đủ trên CMND/CCCD'.tr(),
            formControlName: BankAccountEntity.ownerNameKey,
          ),
          'Số CMND/CCCD'.tr().text.titleMedium(context).make(),
          AppTextFieldReactive(
            hintText: 'Số CMND/CCCD'.tr(),
            formControlName: BankAccountEntity.idKey,
          ),
          'Ngân hàng liên kết'.tr().text.titleMedium(context).make(),
          //fetch api for this one like select address ?

          // AddressSelectField<BankAccountEntity>(
          //   hintText: 'Chọn ngân hàng',
          //   itemToString: (bank) => bank?.bankName,
          //   formControlName: BankAccountEntity.bankNameKey,
          // ),
          AppTextFieldReactive(
            hintText: 'Chọn ngân hàng'.tr(),
            formControlName: BankAccountEntity.bankNameKey,
          ),
          'Số tài khoản'.tr().text.titleMedium(context).make(),
          AppTextFieldReactive(
            hintText: 'Số tài khoản ngân hàng'.tr(),
            formControlName: BankAccountEntity.numberAccountKey,
          ),
        ].withDivider(Gaps.vGap8),
      ).pxDefault(),
    );
  }
}
