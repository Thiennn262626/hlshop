part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStarted() = _AppStarted;

  const factory AuthEvent.authenticated({
    required String token,
  }) = _SignIn;

  const factory AuthEvent.signOut() = _SignOut;
}
