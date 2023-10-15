part of 'receive_address_cubit.dart';

@freezed
class ReceiveAddressState with _$ReceiveAddressState {
  const ReceiveAddressState._();

  const factory ReceiveAddressState({
    @Default(ApiStatus.initial()) ApiStatus status,
  }) = _ReceiveAddressState;
}
