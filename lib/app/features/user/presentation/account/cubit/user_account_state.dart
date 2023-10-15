part of 'user_account_cubit.dart';

@freezed
class UserAccountState with _$UserAccountState {
  const UserAccountState._();

  const factory UserAccountState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) UserEntity? item,
  }) = _UserAccountState;
}
