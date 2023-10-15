part of 'auth_bloc.dart';

class AuthData {
  final UserEntity? user;

  AuthData updateUser({
    UserEntity? user,
  }) {
    return AuthData(
      user: user,
    );
  }

//<editor-fold desc="Data Methods">
  const AuthData({
    this.user,
  });

  @override
  bool operator ==(Object other) => identical(this, other) || (other is AuthData && runtimeType == other.runtimeType && user == other.user);

  @override
  int get hashCode => user.hashCode;

  @override
  String toString() {
    return 'AuthData{' + ' user: $user,' + '}';
  }

  AuthData copyWith({
    UserEntity? user,
  }) {
    return AuthData(
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user': this.user,
    };
  }

  factory AuthData.fromMap(Map<String, dynamic> map) {
    return AuthData(
      user: map['user'] as UserEntity,
    );
  }

//</editor-fold>
}

@immutable
abstract class AuthState {
  const AuthState(this.data);

  final AuthData data;
}

class AuthInitialState extends AuthState {
  const AuthInitialState(super.data);
}

class AuthLoadingState extends AuthState {
  const AuthLoadingState(super.data);
}

class UnAuthenticatedState extends AuthState {
  const UnAuthenticatedState(super.data, {this.showToast = false, this.openSignInPage = false});

  final bool openSignInPage;
  final bool showToast;
}

class AuthenticatedStateFail extends AuthState {
  const AuthenticatedStateFail(super.data, {required this.err});

  final Object err;
}

class AuthenticatedState extends AuthState {
  const AuthenticatedState(
    super.data, {
    this.isRefresh = false,
    this.firstTimeLoginEver = false,
  });

  final bool firstTimeLoginEver;
  final bool isRefresh;
}
