import 'package:hlshop/app/features/user/self.dart';

class MsPaymentRepo implements PaymentRepo {
  @override
  Future<List<PaymentMethodEntity>?> getBankAccountList() {
    return Future.value(
      [
        const BankAccountEntity(
          id: '56010001451144',
          name: 'Bidv',
          branchName: 'Hải Vân',
          numberAccount: '412490128049120',
          ownerName: 'Trần Văn Quân',
        ),
        const BankAccountEntity(
          id: '48124901240192409',
          name: 'VietComBank',
          branchName: 'Nam Á',
          numberAccount: '4127634124390124',
          ownerName: 'Phan Công Thắng',
        ),
        const BankAccountEntity(
          id: '45712840912949012',
          name: 'ACB',
          branchName: 'Liên Chiểu',
          numberAccount: '4298402003921332',
          ownerName: 'Nguyễn Tấn Sơn',
        ),
      ],
    );
  }

  @override
  Future<List<PaymentMethodEntity>?> getCreditCardList() {
    // TODO: implement getCreditCardList
    throw UnimplementedError();
  }
}
