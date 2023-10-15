part of 'user_payment_info_cubit.dart';

@freezed
class UserPaymentInfoState with _$UserPaymentInfoState {
  const factory UserPaymentInfoState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default([]) List<PaymentMethodEntity> bankAccountList,
  }) = _UserPaymentInfoState;
  const UserPaymentInfoState._();
}
