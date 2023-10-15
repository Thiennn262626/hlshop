import 'package:hlshop/all_file/all_file.dart';
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
  }

  late final UserSecureStorage _userSecureStorage;

  // late final UserRepo _UserRepo;
  late final UserRepo userRepo;

  Future<FutureOr<void>> _onUserInitialEvent(
    _UserInitialEvent event,
    Emitter<UserState> emit,
  ) async {
    add(const UserEvent.fetch());
  }

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
  ) {
    emit(state.copyWith(updateStatus: state.updateStatus.toPending()));
    try {
      final userEntity =
          userRepo.updateContactName(contactFullName: event.userName);
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
}
