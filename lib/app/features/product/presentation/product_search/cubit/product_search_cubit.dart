import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';

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
        value: filterData?.productCategory,
      ),
      ProductFilterData.minKey: FormControl<String>(
        value: filterData?.minAmount,
      ),
      ProductFilterData.maxKey: FormControl<String>(
        value: filterData?.maxAmount,
      ),
    });
    controller = AppPagingController<int, ProductEntity>(firstPageKey: 0);
    controller.addPageRequestListener((pageKey) {
      // fetchProduct(pageKey, 10);
    });
  }
  late final AppPagingController<int, ProductEntity> controller;
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

  Future<void> fetchItemList() async {
    controller.refresh();
  }

  Future<List<ProductEntity>> fetchProduct(int? offset, int? limit) async {
    try {
      return await getIt<ProductRepo>().getProductListSearch(
        offset: offset,
        limit: limit,
        filterData: state.filterData,
      );
    } catch (e) {
      return [];
    }
  }

  Future<List<ProductEntity>> onScrollLoad(int offset, int limit) async {
    await fetchProduct(offset, limit);
    return Future.value(state.products);
  }

  void setMinMax(String min, String max) {
    final totalfilterData = state.filterData?.copyWith(
      productCategory: getProductFilterDataValue().productCategory,
      maxAmount: max,
      minAmount: min,
    );
    emit(state.copyWith(filterData: totalfilterData));
  }

  Future<void> onSearchChange(ProductFilterData filterData) async {
    final totalfilterData = state.filterData?.copyWith(
      search: filterData.search,
    );
    emit(state.copyWith(filterData: totalfilterData));
    await fetchItemList();
  }

  Future<void> onSortChange(ProductFilterData filterData) async {
    final totalfilterData = state.filterData?.copyWith(
      orderByType: filterData.orderByType,
    );
    emit(state.copyWith(filterData: totalfilterData));
    await fetchItemList();
  }

  Future<void> onFilterChange() async {
    final totalfilterData = state.filterData?.copyWith(
      productCategory: getProductFilterDataValue().productCategory,
    );
    emit(state.copyWith(filterData: totalfilterData));
    await fetchItemList();
  }

  Future<void> clearFilter() async {
    form.reset();
    emit(
      state.copyWith(
        filterData: state.filterData?.copyWith(
          productCategory: null,
          maxAmount: null,
          minAmount: null,
          type: state.filterData?.type ?? ProductListType.hot,
        ),
      ),
    );
    await fetchItemList();
  }
}
