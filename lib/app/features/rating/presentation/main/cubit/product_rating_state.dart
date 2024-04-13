part of 'product_rating_cubit.dart';

class ProductRatingState extends Equatable {
  const ProductRatingState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  ProductRatingState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return ProductRatingState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
