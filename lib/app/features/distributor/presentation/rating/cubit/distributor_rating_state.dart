part of 'distributor_rating_cubit.dart';

class DistributorRatingState extends Equatable {
  const DistributorRatingState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  DistributorRatingState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return DistributorRatingState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
