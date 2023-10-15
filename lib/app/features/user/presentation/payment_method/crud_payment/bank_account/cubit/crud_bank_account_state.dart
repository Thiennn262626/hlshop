part of 'crud_bank_account_cubit.dart';

@freezed
class CrudBankAccountState with _$CrudBankAccountState {
  const factory CrudBankAccountState({
    @Default(ApiStatus.initial()) ApiStatus apiStatus,
    @Default(null) BankAccountEntity? payment,
  }) = _CrudBankAccountState;
  const CrudBankAccountState._();
}
