import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_repo.dart';

part 'product_search_state.dart';

class ProductSearchCubit extends Cubit<ProductSearchState> {
  ProductSearchCubit({ProductFilterData? filterData, this.searchHint})
      : super(
          ProductSearchState(
            filterData: filterData,
          ),
        ) {
    form = FormGroup({
      ProductFilterData.category: FormControl<ProductCategoryEntity>(

          // value: ProductCategoryEntity(id: filterData?.productCategoryID),
          ),
      ProductFilterData.min: FormControl<String>(
        value: state.minAmount,
      ),
      ProductFilterData.max: FormControl<String>(

          //  value: state.maxAmount,
          ),
      ProductFilterData.minMax: FormControl<ProductType>(),
    });
  }

  final String? searchHint;

  late FormGroup form;

  Future<List<ProductEntity>> fetchProduct(int offset, int limit) {
    return getIt<ProductRepo>().getProductListSearch(
      offset: offset,
      limit: limit,
      filterData: state.filterData,
    );
  }

  void setMinMax(String min, String max) {
    emit(state.copyWith(minAmount: min, maxAmount: max));
  }
}
