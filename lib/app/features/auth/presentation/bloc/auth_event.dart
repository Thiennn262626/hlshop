part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthFirstLoadUserEvent extends AuthEvent {
  AuthFirstLoadUserEvent();
}

class AuthFetchUserEvent extends AuthEvent {
  AuthFetchUserEvent();
}

class AuthenticatedEvent extends AuthEvent {
  AuthenticatedEvent({
    required this.token,
    this.user,
    this.isRefresh = false,
    this.avatar,
    this.firstTime = false,
  });

  final String token;
  final UserEntity? user;
  final String? avatar;
  final bool firstTime;
  final bool isRefresh;
}

class UnAuthenticatedEvent extends AuthEvent {
  UnAuthenticatedEvent({this.showToast = false, this.openSignInPage = false});

  final bool openSignInPage;
  final bool showToast;
}
