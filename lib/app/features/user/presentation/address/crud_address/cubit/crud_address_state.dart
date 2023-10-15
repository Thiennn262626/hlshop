part of 'crud_address_cubit.dart';

@freezed
class CrudAddressState with _$CrudAddressState {
  const factory CrudAddressState({
    @Default(ApiStatus.initial()) ApiStatus status,
  }) = _CrudAddressState;
  const CrudAddressState._();
}
