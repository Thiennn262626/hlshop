import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';
import 'package:hlshop/services/user_secure_storage_service.dart';

import '../../self.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    _userSecureStorage = getIt<UserSecureStorage>();
    // _authRepo = getIt<AuthRepo>();
    _userRepo = getIt<UserRepo>();

    on<_AppStarted>(_onAppStarted);
    on<_SignIn>(_onSignIn);
    on<_SignOut>(_onSignOut);
  }

  late final UserSecureStorage _userSecureStorage;

  // late final AuthRepo _authRepo;
  late final UserRepo _userRepo;

  FutureOr<void> _onAppStarted(
    _AppStarted event,
    Emitter<AuthState> emit,
  ) async {
    final AuthenticationStatus status;

    final token = _userSecureStorage.token;
    if (token != null) {
      getIt<DioModule>().addToken(token);
      status = const AuthenticationStatus.authenticated();
    } else {
      status = const AuthenticationStatus.notAuthenticated();
    }

    emit(
      state.copyWith(
        status: status,
      ),
    );
  }

  FutureOr<void> _onSignIn(
    _SignIn event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(loginStatus: state.loginStatus.toPending()));
    final token = event.token;

    await _userSecureStorage.setToken(token);
    getIt<DioModule>().addToken(token);

    emit(
      state.copyWith(
        status: const AuthenticationStatus.authenticated(),
        loginStatus: const ApiStatus.done(),
      ),
    );
  }

  FutureOr<void> _onSignOut(
    _SignOut event,
    Emitter<AuthState> emit,
  ) async {
    try {
      getIt<DioModule>().removeToken();
      await _userSecureStorage.clear();

      emit(
        state.copyWith(
          status: const AuthenticationStatus.notAuthenticated(),
          loginStatus: const ApiStatus.done(),
        ),
      );
    } catch (e) {
      log(e.toString());
    }
  }

  bool get isLogin =>
      state.status == const AuthenticationStatus.authenticated();
}
