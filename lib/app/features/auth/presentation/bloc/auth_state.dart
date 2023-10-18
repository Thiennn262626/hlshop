part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthenticationStatus.notDetermined()) AuthenticationStatus status,
    @Default(ApiStatus.initial()) ApiStatus loginStatus,
  }) = _AuthenticationState;
}
