import 'package:{{{pathPackage}}}/all_file/all_file.dart';

part '{{feature_name.snakeCase()}}_state.dart';
part '{{feature_name.snakeCase()}}_cubit.freezed.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit({
    dynamic? item,
  }) : super({{feature_name.pascalCase()}}State(item: item));

  // late {{feature_name.pascalCase()}}Repo _repo = getIt();

  Future<void> loadData() async {
    emit(state.copyWith(status: state.status.toPending()));

    try {
      // final productEntity = await productRepo.getProductDetail(
      //   id: state.product?.id,
      // );
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
          // product: productEntity,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }
}
