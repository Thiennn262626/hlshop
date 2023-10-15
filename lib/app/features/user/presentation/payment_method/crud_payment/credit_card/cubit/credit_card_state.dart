part of 'credit_card_cubit.dart';

@freezed
class CrudCreditCardState with _$CrudCreditCardState {
  const factory CrudCreditCardState({
    @Default(ApiStatus.initial()) ApiStatus status,
  }) = _CrudCreditCardState;
  const CrudCreditCardState._();
}
