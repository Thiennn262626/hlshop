import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

enum CrudBankAccountType {
  add,
  check,
}

@RoutePage()
class CrudBankAccountPage extends StatelessWidget {
  const CrudBankAccountPage({
    super.key,
    this.initialBankAccount,
    this.type = CrudBankAccountType.add,
  });

  final BankAccountEntity? initialBankAccount;
  final CrudBankAccountType type;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CrudBankAccountCubit(bankAccountItem: initialBankAccount),
      child: Builder(
        builder: (context) {
          return ReactiveForm(
            formGroup: context.read<CrudBankAccountCubit>().form,
            child: Scaffold(
              appBar: AppAppBar(
                title: _getTitle(),
              ),
              bottomNavigationBar: AppBottomBar(
                child: _getButton(context),
              ),
              body: _getBody(),
            ),
          );
        },
      ),
    );
  }

  Widget _getButton(BuildContext context) {
    if (type == CrudBankAccountType.add) {
      return AppButton(
        label: _getLabel(),
        isSubmitButton: true,
        onPressed: () {},
      );
    } else if (type == CrudBankAccountType.check) {
      return AppButton(
        style: AppButtonTheme.grey(context),
        label: _getLabel(),
        onPressed: () {},
      );
    }
    return const SizedBox.shrink();
  }

  Widget? _getBody() {
    if (type == CrudBankAccountType.add) {
      return const CrudBankAccountBody();
    } else if (type == CrudBankAccountType.check) {
      return InfoBankAccountBody(
        item: initialBankAccount,
      );
    }
    return null;
  }

  String? _getLabel() {
    if (type == CrudBankAccountType.add) {
      return 'Tiếp theo'.tr();
    } else if (type == CrudBankAccountType.check) {
      return 'Xóa'.tr();
    }
    return null;
  }

  String _getTitle() {
    if (type == CrudBankAccountType.add) {
      return 'Thêm tài khoản thẻ/Ngân hàng'.tr();
    } else if (type == CrudBankAccountType.check) {
      return 'Tài khoản ngân hàng'.tr();
    }
    return 'Tài khoản'.tr();
  }
}
