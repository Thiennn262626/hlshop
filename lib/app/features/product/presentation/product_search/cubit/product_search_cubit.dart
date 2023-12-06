import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/product/domain/entity/category_entity.dart';
import 'package:hlshop/app/features/product/domain/entity/product_entity.dart';
import 'package:hlshop/app/features/product/domain/repo/product_repo.dart';

part 'product_search_cubit.freezed.dart';
part 'product_search_state.dart';

class ProductSearchCubit extends Cubit<ProductSearchState> {
  ProductSearchCubit({ProductFilterData? filterData, this.searchHint})
      : super(
          ProductSearchState(
            filterData: filterData,
          ),
        ) {
    form = FormGroup({
      ProductFilterData.categoryKey: FormControl<ProductCategoryEntity>(
        value: ProductCategoryEntity(id: filterData?.productCategory?.id),
      ),
      ProductFilterData.minKey: FormControl<String>(
        value: '',
      ),
      ProductFilterData.maxKey: FormControl<String>(
        value: '',
      ),
    });
  }

  final String? searchHint;

  late FormGroup form;

  ProductFilterData getProductFilterDataValue() {
    final category =
        form.getValue<ProductCategoryEntity>(ProductFilterData.categoryKey);
    final min = form.getValue<String>(ProductFilterData.minKey);
    final max = form.getValue<String>(ProductFilterData.maxKey);
    return ProductFilterData(
      productCategory: category,
      minAmount: min,
      maxAmount: max,
    );
  }

  Future<void> fetchProduct(int? offset, int? limit) async {
    try {
      final listProduct = await getIt<ProductRepo>().getProductListSearch(
        offset: offset,
        limit: limit,
        filterData: state.filterData,
      );
      emit(
        state.copyWith(status: const ApiStatus.done(), products: listProduct),
      );
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<List<ProductEntity>> onScrollLoad(int offset, int limit) async {
    await fetchProduct(offset, limit);
    return Future.value(state.products);
  }

  void setMinMax(String min, String max) {
    emit(state.copyWith(minAmount: min, maxAmount: max));
  }

  Future<void> setFilterData(ProductFilterData filterData) async {
    final totalfilterData = filterData.copyWith(
      orderByType: state.filterData?.orderByType,
    );
    emit(state.copyWith(filterData: totalfilterData));
    await fetchProduct(0, 10);
  }

  Future<void> onSortChange(ProductFilterData filterData) async {
    final totalfilterData = filterData.copyWith(
      search: state.filterData?.search,
    );
    emit(state.copyWith(filterData: totalfilterData));
    await fetchProduct(0, 10);
  }

  Future<void> onFilterChange() async {
    // final totalfilterData = state.filterData?.copyWith(
    //   search: state.filterData?.search,
    //   orderByType: state.filterData?.orderByType,
    // );
    emit(state.copyWith(filterData: getProductFilterDataValue()));
    await fetchProduct(0, 10);
  }
}
