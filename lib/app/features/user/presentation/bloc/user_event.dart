part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const UserEvent._();

  const factory UserEvent.initial() = _UserInitialEvent;

  const factory UserEvent.fetch() = _UserFetchEvent;

  const factory UserEvent.clear() = _UserClearEvent;

  const factory UserEvent.updateUserName({
    required String userName,
  }) = _UserUpdateUserNameEvent;

  const factory UserEvent.updateCover({
    required File file,
  }) = _UserUpdateCoverEvent;

  const factory UserEvent.updateAvatar({
    required File file,
  }) = _UserUpdateAvatarEvent;
}
