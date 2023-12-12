part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const UserState._();

  const factory UserState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(ApiStatus.initial()) ApiStatus updateStatus,
    @Default(ApiStatus.initial()) ApiStatus checkoutStatus,
    @Default(null) UserEntity? userEntity,
  }) = _UserState;
}
