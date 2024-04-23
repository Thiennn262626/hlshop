part of 'directory_cubit.dart';

@freezed
class DirectoryState with _$DirectoryState {
  const DirectoryState._();

  const factory DirectoryState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) DirectoryEntity? directory,
  }) = _DirectoryState;
}
