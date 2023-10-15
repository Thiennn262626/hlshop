import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class AppPagingController<PageKeyType, ItemType> extends PagingController<PageKeyType, ItemType> {
  AppPagingController({required PageKeyType firstPageKey}) : super(firstPageKey: firstPageKey);

  Future<List<ItemType>> Function(PageKeyType offset, int limit)? fetchListData;
  int? pageSize;

  void init({required Future<List<ItemType>> Function(PageKeyType offset, int limit) fetchListDataParam, required int pageSizeParam}) {
    fetchListData = fetchListDataParam;
    pageSize = pageSizeParam;
  }

  void clearAndRefresh() {
    itemList = [];
    refresh();
  }

  void refreshSilent({List<ItemType>? updateItemList, int? limit}) {
    if (updateItemList.isNotNullOrEmpty) {
      itemList = [...updateItemList ?? []];
      return;
    }
    log('refreshSilent');

    var itemCurrentLength = (itemList?.length ?? 0) > 0 ? itemList?.length : null;

    fetchListData?.call(0 as PageKeyType, limit ?? itemCurrentLength ?? pageSize ?? 20).then((value) {
      itemList = [...value];
    });
  }

  void refreshList() {
    itemList = [...?itemList];
  }

  void filterItem({
    required bool Function(ItemType item) conditionMethod,
    bool refreshIfEmpty = false,
  }) {
    final list = itemList.filterAsList(conditionMethod);
    if (list.isEmpty && refreshIfEmpty) {
      refresh();
    } else {
      itemList = [...list];
    }
  }

  bool updateItem({
    required ItemType? item,
    required bool Function(ItemType? oldItem, ItemType? item) checkFunction,
    bool? addHeadNotFound,
    bool? addTailNotFound,
  }) {
    log('updateItem ${item.toString()}');

    if (itemList.isNullOrEmpty || item == null) return false;

    final indexUpdate = itemList?.indexWhere((oldItem) => checkFunction(oldItem, item));
    if ((indexUpdate ?? -1) > -1) {
      itemList![indexUpdate!] = item;
      itemList = [...?itemList];
      log('updateItem done');
      return true;
    } else if (addHeadNotFound ?? false) {
      log('addHeadNotFound');
      itemList = [item, ...?itemList];
    } else if (addTailNotFound ?? false) {
      log('addTailNotFound');
      itemList = [...?itemList, item];
    }

    log('updateItem false');
    return false;
  }

  bool updateOrFetchItem({
    required bool Function(ItemType? oldItem) checkFunction,
  }) {
    if (itemList.isNullOrEmpty) return false;

    final indexUpdate = itemList?.indexWhere((oldItem) => checkFunction(oldItem));
    if (indexUpdate != null && indexUpdate != -1) {
      fetchListData?.call(indexUpdate as PageKeyType, 1).then((value) {
        itemList![indexUpdate] = value.firstOrNull ?? itemList![indexUpdate];
        itemList = [...?itemList];
      });
    }
    return false;
  }
}
