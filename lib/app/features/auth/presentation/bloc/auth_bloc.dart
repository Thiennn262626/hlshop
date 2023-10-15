import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';
import 'package:hlshop/services/user_secure_storage_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitialState(AuthData())) {
    _userSecureStorage = getIt<UserSecureStorage>();
    // _authRepo = getIt<AuthRepo>();
    _userRepo = getIt<UserRepo>();

    on<AuthFirstLoadUserEvent>(_onFirstLoadAuthEvent);
    on<AuthFetchUserEvent>(_onAuthFetchUserEvent);
    on<AuthenticatedEvent>(_onAuthenticatedEvent);
    on<UnAuthenticatedEvent>(_onUnAuthenticatedEvent);
  }

  late final UserSecureStorage _userSecureStorage;

  // late final AuthRepo _authRepo;
  late final UserRepo _userRepo;

  FutureOr<void> _onFirstLoadAuthEvent(
      AuthFirstLoadUserEvent event, Emitter<AuthState> emit) {
    emit(AuthLoadingState(state.data));
    log('${_userSecureStorage.user}');

    try {
      if (_userSecureStorage.token == null) {
        add(UnAuthenticatedEvent());
      } else {
        add(
          AuthenticatedEvent(
            token: _userSecureStorage.token ?? '',
            avatar: _userSecureStorage.socialAvatar ?? '',
            firstTime: false,
            isRefresh: true,
          ),
        );
      }
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e));
    }
  }

  Future<void> _onAuthFetchUserEvent(
      AuthFetchUserEvent event, Emitter<AuthState> emit) async {
    try {
      if (state is! AuthenticatedState) {
        return;
      }
      final user = await _userRepo.getUserInfo();
      emit(
        AuthenticatedState(
          state.data.copyWith(user: user),
          isRefresh: true,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e));
    }
  }

  Future<void> _onAuthenticatedEvent(
      AuthenticatedEvent event, Emitter<AuthState> emit) async {
    log('AuthenticatedEvent: ${event.token}');
    try {
      await setUserInfo(
        token: event.token,
        avatar: event.avatar,
      );

      UserEntity user;
      if (event.user != null) {
        user = event.user!;
      } else {
        user = await _userRepo.getUserInfo();
      }

      emit(
        AuthenticatedState(
          state.data.copyWith(
            user: user,
          ),
          firstTimeLoginEver: event.firstTime,
          isRefresh: event.isRefresh,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e));
    }
  }

  Future<FutureOr<void>> _onUnAuthenticatedEvent(
      UnAuthenticatedEvent event, Emitter<AuthState> emit) async {
    try {
      if (_userSecureStorage.token.isNotNullOrEmpty) {
        try {
          // await _authRepo.logout();
        } catch (e) {
          log(e.toString(), error: e);
        }
      }
      await removeUserInfo();

      emit(UnAuthenticatedState(
        state.data.updateUser(
          user: null,
        ),
        openSignInPage: event.openSignInPage,
        showToast: event.showToast,
      ));
    } catch (e) {
      log(e.toString(), error: e);
      emit(AuthenticatedStateFail(state.data, err: e));
    }
  }

  Future<void> removeUserInfo() async {
    getIt<DioModule>().removeToken();
    await _userSecureStorage.clear();
    // SocketIOService.instance.clearToken();
    // FirebaseNotificationService.instance.removeToken();
  }

  Future<void> setUserInfo({required String token, String? avatar}) async {
    await _userSecureStorage.setToken(token);
    await _userSecureStorage.notifyAuthorized();

    getIt<DioModule>().addToken(token);

    // SocketIOService.instance.setToken(token: token);
    if (avatar.isNotNullOrEmpty) {
      // await _userRepo.updateUserAvatarStr(
      //   avatarStr: avatar ?? '',
      // );
    }
  }

  FutureOr<void> checkLoginAction(
    BuildContext context, {
    required FutureOr<void> Function(UserEntity? user) onLogin,
    FutureOr<void> Function()? onDismiss,
  }) async {
    final isLogin = context.read<AuthBloc>().isLogin;

    if (isLogin) {
      return onLogin.call(user);
    } else {
      return AppActionSheet(
        message: 'Vui lòng đăng nhập để tiếp tục'.tr(),
        showCancelButton: true,
        cancelText: 'Thoát'.tr(),
        actions: [
          ActionSheetActionData(
            text: 'Đăng nhập'.tr(),
            onPressed: () async {
              context.router.pop();
              await context.router.push(const LoginRoute());
              if (user != null) {
                return onLogin.call(user);
              } else {
                return onDismiss?.call();
              }
            },
          ),
          ActionSheetActionData(
            text: 'Đăng ký'.tr(),
            onPressed: () async {
              context.router.pop();
              await context.router.push(const LoginRoute());
              if (user != null) {
                return onLogin.call(user);
              } else {
                return onDismiss?.call();
              }
            },
          ),
        ],
      ).show(context);
    }
  }

  bool get isLogin => state.data.user != null;

  String? get userID => state.data.user?.id;

  UserEntity? get user => state.data.user;

  bool isAdmin() {
    return true;
  }

  @override
  Future<void> close() async {
    return super.close();
  }
}
