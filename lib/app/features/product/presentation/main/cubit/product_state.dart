part of 'product_cubit.dart';

class ProductState extends Equatable {
  const ProductState({
    this.status = ItemStatus.initial,
    required this.item,
    this.error,
  });

  final ItemStatus status;
  final dynamic item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];

  ProductState copyWith({
    ItemStatus? status,
    dynamic? item,
    Object? error,
  }) {
    return ProductState(
      status: status ?? this.status,
      item: item ?? this.item,
      error: error ?? this.error,
    );
  }
}
