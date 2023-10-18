import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_status.freezed.dart';

@freezed
class AuthenticationStatus with _$AuthenticationStatus {
  const factory AuthenticationStatus.notDetermined() = _NotDetermined;

  const factory AuthenticationStatus.authenticated() = _Authenticated;

  const factory AuthenticationStatus.notAuthenticated() = _NotAuthenticated;
}

extension AuthenticationStatusX on AuthenticationStatus {
  bool get isNotDetermined => this is _NotDetermined;

  bool get isAuthenticated => this is _Authenticated;

  bool get isNotAuthenticated => this is _NotAuthenticated;
}
