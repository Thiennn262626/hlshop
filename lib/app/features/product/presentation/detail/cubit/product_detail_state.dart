part of 'product_detail_cubit.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const ProductDetailState._();

  const factory ProductDetailState({
    @Default(ApiStatus.initial()) ApiStatus status,
    @Default(null) ProductEntity? product,
  }) = _ProductDetailState;
}
