import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

part 'paging_number_state.dart';

class PagingNumberResult {
  const PagingNumberResult({
    required this.listData,
    this.total,
  });

  final List<dynamic> listData;
  final int? total;
}

class PagingNumberCubit extends Cubit<PagingNumberState> {
  PagingNumberCubit({
    required this.fetchListFunc,
    this.pageSize = 20,
  }) : super(const PagingNumberState());

  final Future<PagingNumberResult> Function(int offset, int limit) fetchListFunc;
  final int pageSize;

  List<dynamic>? getCurrentPageListData() {
    return state.listData[state.currentPage];
  }

  bool hasNext() => !(state.totalPage != null && state.currentPage >= state.totalPage!);

  bool hasPrevious() => state.currentPage > 1;

  FutureOr<void> fetchFirstPage() {
    fetchPage(page: state.currentPage, needRefresh: true);
  }

  FutureOr<void> nextPage({
    bool needRefresh = false,
  }) {
    if (!hasNext()) {
      return Future.value();
    }
    fetchPage(page: state.currentPage + 1, needRefresh: needRefresh);
  }

  FutureOr<void> previousPage({
    bool needRefresh = false,
  }) {
    if (!hasPrevious()) {
      return Future.value();
    }
    fetchPage(page: state.currentPage - 1, needRefresh: needRefresh);
  }

  FutureOr<void> fetchPage({
    int page = 1,
    bool needRefresh = false,
  }) async {
    emit(state.copyWith(status: PagingNumberStatus.loading));
    try {
      if (needRefresh == false && state.listData[page].isNotNullOrEmpty) {
        emit(state.copyWith(status: PagingNumberStatus.success, currentPage: page));
        return;
      }

      final rs = await fetchListFunc(
        (page - 1) * pageSize,
        pageSize,
      );
      final listDataNew = {...state.listData};
      listDataNew[page] = rs.listData;
      final totalPage = rs.total != null ? ((rs.total ?? 0) / pageSize).ceil() : null;
      emit(
        state.copyWith(
          status: PagingNumberStatus.success,
          listData: listDataNew,
          currentPage: page,
          totalPage: totalPage,
        ),
      );
    } catch (e) {
      log('$e', error: e);
      emit(
        state.copyWith(
          status: PagingNumberStatus.error,
          error: e,
        ),
      );
    }
  }

  void updateTotalByTotalItem(int totalItem) {
    emit(state.copyWith(totalPage: (totalItem / pageSize).ceil()));
  }

  int? totalDataOfPage(
    int page, {
    bool Function(dynamic item)? conditionMethod,
  }) {
    return state.listData[page].filterAsList(conditionMethod ?? (e) => castOrFallback(e, true)).length;
  }

  List<T>? getListDataOfCurrentPage<T>() {
    try {
      final listDynamicType = getListDataOfPage(state.currentPage);
      return listDynamicType?.cast<T>();
    } catch (e) {
      log('$e', error: e);
      return null;
    }
  }

  List<dynamic>? getListDataOfPage(int page) {
    return state.listData[page];
  }

  void refreshAll() {
    emit(
      state.update(
        listData: {},
        currentPage: 1,
        totalPage: null,
        status: PagingNumberStatus.initial,
      ),
    );
    fetchPage(page: 1, needRefresh: true);
  }
}
