import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

part 'user_payment_info_state.dart';
part 'user_payment_info_cubit.freezed.dart';

class UserPaymentInfoCubit extends Cubit<UserPaymentInfoState> {
  UserPaymentInfoCubit({
    List<PaymentMethodEntity>? bankAccountList,
  }) : super(
          UserPaymentInfoState(
            bankAccountList: bankAccountList ?? [],
          ),
        );
  final PaymentRepo msPaymentRepo = getIt<PaymentRepo>();

  Future<void> loadData() async {
    emit(
      state.copyWith(
        bankAccountList: await msPaymentRepo.getBankAccountList() ?? [],
      ),
    );
  }

  int get countBankAccount => state.bankAccountList.length;
}
