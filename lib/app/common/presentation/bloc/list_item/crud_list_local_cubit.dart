import 'package:hlshop/all_file/all_file.dart';

@Deprecated('Not support anymore')
abstract class CrudListCubit<I, S extends CrudListState<I>> extends Cubit<S> {
  CrudListCubit(super.initialState);

  Future<void> addItem(
    I item, {
    int? index,
  }) async {
    try {
      loaded(
        [...state.list, item],
      );
    } catch (e) {
      _handleError(e);
    }
  }

  Future<void> removeItem(
    I item, {
    int? index,
  }) async {
    try {
      loaded(
        state.list.filter((e) => item != e).toList(),
      );
    } catch (e) {
      _handleError(e);
    }
  }

  Future<void> updateItem(
    I item, {
    int? index,
  }) async {
    try {
      loaded(
        state.list.filter((e) => item != e).toList(),
      );
    } catch (e) {
      _handleError(e);
    }
  }

  void _handleError(Object e) {
    if (e is Error) {
      log(e.toString(), error: e, stackTrace: e.stackTrace);
    } else {
      log(e.toString(), error: e);
    }
    emit(state.copyWith(status: ItemStatus.error, error: e) as S);
  }

  void loading() {
    emit(state.copyWith(status: ItemStatus.loading) as S);
  }

  void loaded(List<I>? list) {
    emit(
      state.copyWith(
        list: list,
        status: ItemStatus.success,
      ) as S,
    );
  }
}

class CrudListState<I> extends Equatable {
  const CrudListState({
    this.status = ItemStatus.initial,
    this.list = const [],
    this.error,
  });

  final ItemStatus status;
  final List<I> list;
  final Object? error;

  CrudListState<I> copyWith({
    ItemStatus? status,
    List<I>? list,
    Object? error,
  }) {
    return CrudListState<I>(
      status: status ?? this.status,
      list: list ?? this.list,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, list, error];
}
