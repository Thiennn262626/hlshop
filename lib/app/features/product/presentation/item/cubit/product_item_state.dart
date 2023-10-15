part of 'product_item_cubit.dart';

class ProductItemState extends Equatable {
  const ProductItemState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final ProductEntity item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  ProductItemState copyWith({
    ItemStatus? status,
    ProductEntity? item,
    Object? error,
  }) {
    return ProductItemState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
