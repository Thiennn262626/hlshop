part of 'change_password_cubit.dart';

class ChangePasswordState extends RequestState {
  const ChangePasswordState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  ChangePasswordState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return ChangePasswordState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
