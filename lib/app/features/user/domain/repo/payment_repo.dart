import 'package:hlshop/app/features/user/self.dart';

abstract class PaymentRepo {
  Future<List<PaymentMethodEntity>?> getBankAccountList();
  Future<List<PaymentMethodEntity>?> getCreditCardList();
}
