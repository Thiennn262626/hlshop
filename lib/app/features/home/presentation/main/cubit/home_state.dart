part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  HomeState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return HomeState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
