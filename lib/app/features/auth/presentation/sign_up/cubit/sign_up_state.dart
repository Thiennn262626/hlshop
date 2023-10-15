part of 'sign_up_cubit.dart';

class SignUpState extends RequestState {
  const SignUpState({
    super.status = ItemStatus.initial,
    required this.item,
    super.error,
  });

  final dynamic item;

  @override
  List<Object?> get props => [status, item, error];

  SignUpState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return SignUpState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
