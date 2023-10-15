import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

class BankAccountItem extends StatelessWidget {
  const BankAccountItem({super.key, required this.item});

  final BankAccountEntity item;

  @override
  Widget build(BuildContext context) {
    return AppTile(
      leading: const Icon(PhosphorIcons.bank_bold),
      title: item.name.toString().text.semiBold.make(),
      trailing: Row(
        children: [
          item.numberAccount
              .subAndChangeFirstNumberAccount()
              ?.text
              .semiBold
              .make(),
          const Icon(PhosphorIcons.caret_right),
        ].withDivider(Gaps.hGap4),
      ),
      onPressed: () {
        context.pushRoute(
          CrudBankAccountRoute(
            initialBankAccount: item,
            type: CrudBankAccountType.check,
          ),
        );
      },
      padding: EdgeInsets.zero,
    );
  }
}
