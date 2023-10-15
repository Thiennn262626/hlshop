part of 'login_cubit.dart';

class LoginState extends RequestState {
  const LoginState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  LoginState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return LoginState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
