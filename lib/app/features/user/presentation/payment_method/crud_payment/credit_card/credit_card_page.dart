import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

enum CrudCardType {
  add,
  check,
}

@RoutePage()
class CrudCreditCardPage extends StatelessWidget {
  const CrudCreditCardPage({
    super.key,
    this.initialCreditCard,
    this.type = CrudCardType.add,
  });

  final CreditCardEntity? initialCreditCard;
  final CrudCardType type;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CrudCreditCardCubit(creditCardItem: initialCreditCard),
      child: Builder(
        builder: (context) {
          return ReactiveForm(
            formGroup: context.read<CrudCreditCardCubit>().form,
            child: Scaffold(
              appBar: AppAppBar(
                title: _getTitle(),
              ),
              bottomNavigationBar: AppBottomBar(
                child: AppButton(
                  isSubmitButton: true,
                  label: 'Tiếp tục'.tr(),
                  onPressed: () {},
                ),
              ),
              body: const CreditCardBody(),
            ),
          );
        },
      ),
    );
  }

  String _getTitle() {
    if (type == CrudCardType.add) {
      return 'Thêm thẻ tín dụng/Ghi nợ'.tr();
    } else if (type == CrudCardType.check) {
      return 'Thẻ tín dụng'.tr();
    }
    return 'Thẻ tín dụng'.tr();
  }
}
