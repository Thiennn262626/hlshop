part of 'product_search_cubit.dart';

class ProductSearchState extends Equatable {
  const ProductSearchState({
    required this.filterData,
    this.minAmount,
    this.maxAmount,
  });

  final ProductFilterData? filterData;
  final String? minAmount;

  final String? maxAmount;

  @override
  List<Object?> get props => [filterData,minAmount,maxAmount];

  ProductSearchState copyWith({
    ProductFilterData? filterData,
    String? minAmount,
    String? maxAmount,
  }) {
    return ProductSearchState(
      filterData: filterData ?? this.filterData,
      minAmount:  minAmount ?? this.minAmount,
      maxAmount: maxAmount ?? this.maxAmount,
    );
  }
}
