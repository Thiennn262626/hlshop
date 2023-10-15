import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/payment_entity.dart';

class CreditCardBody extends StatelessWidget {
  const CreditCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody.withSpacing(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              'Chi tiết thẻ'.tr().text.titleMedium(context).make(),
              AppTextFieldReactive(
                hintText: 'Số thẻ'.tr(),
                formControlName: CreditCardEntity.numberCardKey,
              ),
              AppTextFieldReactive(
                hintText: 'Họ và tên chủ thẻ'.tr(),
                formControlName: CreditCardEntity.ownerNameKey,
              ),
              //select type
              AppTextFieldReactive(
                formControlName: CreditCardEntity.cardTypeKey,
                decoration:
                    AppTextFieldTheme.primaryActiveHint(context).copyWith(
                  hintText: 'Chọn loại thẻ'.tr(),
                  suffixIcon: const Icon(
                    PhosphorIcons.caret_right,
                  ),
                ),
              ),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AppTextFieldReactive(
                      hintText: 'Ngày hết hạn'.tr(),
                      formControlName: CreditCardEntity.expirationDateKey,
                    ).expand(flex: 2),
                    AppTextFieldReactive(
                      formControlName: CreditCardEntity.cvvCodeKey,
                      decoration:
                          AppTextFieldTheme.primaryActiveHint(context).copyWith(
                        hintText: 'Mã CVV'.tr(),
                        suffixIcon: const Icon(
                          PhosphorIcons.circle_wavy_question,
                        ),
                      ),
                    ).expand(),
                  ].withDivider(Gaps.hGap10),
                ),
              ),
            ].withDivider(Gaps.vGap8),
          ).pDefault(),
          const AppDivider(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              'Địa chỉ đăng ký thẻ'.tr().text.titleMedium(context).make(),
              AppTextFieldReactive(
                hintText: 'Địa chỉ'.tr(),
                formControlName: CreditCardEntity.addressKey,
              ),
              AppTextFieldReactive(
                hintText: 'Mã bưu chính'.tr(),
                formControlName: CreditCardEntity.postalCodeKey,
              ),
            ].withDivider(Gaps.vGap8),
          ).pDefault(),
        ],
      ),
    );
  }
}
