import 'package:hlshop/all_file/all_file.dart';

@Deprecated('Please use Api Status instead')
abstract class RequestItemCubit<I, S extends RequestItemState<I>>
    extends Cubit<S> {
  RequestItemCubit(super.initialState);

  void emitState({
    ItemStatus? status,
    I? item,
    Object? error,
  });

  Future<I?> fetchApi();

  Future<void> loadData() async {
    try {
      loading();
      final item = await fetchApi();
      loaded(item);
    } catch (e) {
      if (e is Error) {
        log(e.toString(), error: e, stackTrace: e.stackTrace);
      } else {
        log(e.toString(), error: e);
      }
      emitState(status: ItemStatus.error, error: e);
    }
  }

  void loading() {
    emitState(status: ItemStatus.loading);
  }

  void loaded(I? item) {
    emitState(
      status: ItemStatus.success,
      item: item,
    );
  }
}

class RequestItemState<I> extends Equatable {
  const RequestItemState({
    this.status = ItemStatus.initial,
    this.item,
    this.error,
  });

  final ItemStatus status;
  final I? item;
  final Object? error;

  @override
  List<Object?> get props => [status, item, error];
}
