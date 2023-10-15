part of 'distributor_item_cubit.dart';

class DistributorItemState extends Equatable {
  const DistributorItemState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  DistributorItemState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return DistributorItemState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
