import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/payment_entity.dart';
import 'package:hlshop/app/features/user/self.dart';

part 'crud_bank_account_cubit.freezed.dart';
part 'crud_bank_account_state.dart';

class CrudBankAccountCubit extends Cubit<CrudBankAccountState> {
  CrudBankAccountCubit({
    BankAccountEntity? bankAccountItem,
  }) : super(CrudBankAccountState(payment: bankAccountItem)) {
    form = FormGroup({
      BankAccountEntity.idKey: FormControl<String>(
        value: bankAccountItem?.id,
        validators: [Validators.required],
      ),
      BankAccountEntity.ownerNameKey: FormControl<String>(
        value: bankAccountItem?.ownerName,
        validators: [Validators.required],
      ),
      BankAccountEntity.bankNameKey: FormControl<String>(
        value: bankAccountItem?.name,
        validators: [Validators.required],
      ),
      // BankAccountEntity.branchNameKey: FormControl<String>(
      //   value: bankAccountItem?.branchName,
      //   validators: [Validators.required],
      // ),
      BankAccountEntity.numberAccountKey: FormControl<String>(
        value: bankAccountItem?.numberAccount,
        validators: [Validators.required],
      ),
    });
  }
  late FormGroup form;
}
