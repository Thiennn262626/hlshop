part of 'detail_account_cubit.dart';

@freezed
class DetailAccountState with _$DetailAccountState {
  const DetailAccountState._();

  const factory DetailAccountState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) UserEntity? userEntity,
    @Default(null) String? name,
  }) = _DetailAccountState;
}
