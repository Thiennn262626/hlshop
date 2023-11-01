import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/self.dart';
import 'package:hlshop/app/features/user/self.dart';
import 'package:hlshop/services/user_secure_storage_service.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    _userSecureStorage = getIt<UserSecureStorage>();
    userRepo = getIt<UserRepo>();

    on<_UserInitialEvent>(_onUserInitialEvent);
    on<_UserFetchEvent>(_onUserFetchEvent);
    on<_UserUpdateUserNameEvent>(_onUserUpdateUserNameEvent);
    on<_UserUpdateCoverEvent>(_onUserUpdateCoverEvent);
    on<_UserUpdateAvatarEvent>(_onUserUpdateAvatarEvent);
    on<_UserClearEvent>(_onClearEvent);
    on<_UserDeletePhoneEvent>(_onUserDeletePhoneEvent);
    on<_UserDeleteEmailEvent>(_onUserDeleteEmailEvent);
  }

  late final UserSecureStorage _userSecureStorage;

  // late final UserRepo _UserRepo;
  late final UserRepo userRepo;

  Future<FutureOr<void>> _onUserInitialEvent(
    _UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {}

  FutureOr<void> _onUserFetchEvent(
    _UserFetchEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      final userEntity = await userRepo.getUserInfo();
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
          userEntity: userEntity,
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ApiStatus.error(e),
        ),
      );
    }
  }

  Future<void> removeUserInfo() async {
    getIt<DioModule>().removeToken();
    await _userSecureStorage.clear();
  }

  FutureOr<void> _onUserUpdateUserNameEvent(
    _UserUpdateUserNameEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(updateStatus: state.updateStatus.toPending()));
    try {
      final userEntity =
          await userRepo.updateContactName(contactFullName: event.userName);
      emit(
        state.copyWith(
          updateStatus: const ApiStatus.done(),
        ),
      );
      add(const UserEvent.fetch());
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          updateStatus: ApiStatus.error(e),
        ),
      );
    }
  }

  FutureOr<void> _onUserUpdateCoverEvent(
    _UserUpdateCoverEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(updateStatus: state.updateStatus.toPending()));
    try {
      final userEntity = await userRepo.updateCover(cover: event.file);
      add(const UserEvent.fetch());
      emit(
        state.copyWith(
          updateStatus: const ApiStatus.done(),
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          updateStatus: ApiStatus.error(e),
        ),
      );
    }
  }

  FutureOr<void> _onUserUpdateAvatarEvent(
    _UserUpdateAvatarEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(updateStatus: state.updateStatus.toPending()));
    try {
      final userEntity = await userRepo.updateAvatar(avatar: event.file);
      add(const UserEvent.fetch());
      emit(
        state.copyWith(
          updateStatus: const ApiStatus.done(),
        ),
      );
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          updateStatus: ApiStatus.error(e),
        ),
      );
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
              await context.router.push(const SignUpRoute());
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

  FutureOr<void> _onUserDeletePhoneEvent(
    _UserDeletePhoneEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
      await userRepo.deletePhone(phone: event.phone);
      add(const UserEvent.fetch());
    } catch (e) {
      emit(
        state.copyWith(
          updateStatus: ApiStatus.error(e),
        ),
      );
    }
  }

  FutureOr<void> _onUserDeleteEmailEvent(
    _UserDeleteEmailEvent event,
    Emitter<UserState> emit,
  ) async {
    try {
      await userRepo.deleteEmail(email: event.email);
      add(const UserEvent.fetch());
    } catch (e) {
      emit(
        state.copyWith(
          updateStatus: ApiStatus.error(e),
        ),
      );
    }
  }

  FutureOr<void> _onClearEvent(
    _UserClearEvent event,
    Emitter<UserState> emit,
  ) {
    emit(const UserState());
  }

  UserEntity? get user => state.userEntity;
}
