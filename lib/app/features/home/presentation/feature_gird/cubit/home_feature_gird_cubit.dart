import 'package:hlshop/all_file/all_file.dart';

part 'home_feature_gird_state.dart';

class HomeFeatureGirdCubit extends Cubit<HomeFeatureGirdState> {
  HomeFeatureGirdCubit({dynamic? item})
      : super(HomeFeatureGirdState(item: item));

  Future<List<ProductCategoryEntity?>> fetchList(int offset, int limit) {
    return getIt<ProductCategoryRepo>().getCategoryList(
      offset: offset,
      limit: limit,
    );
  }
}
