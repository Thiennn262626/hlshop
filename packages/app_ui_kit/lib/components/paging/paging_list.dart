import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/list/refresh_noti/check_page_refresh_event.dart';
import 'package:app_ui_kit/components/paging/app_paging_controller.dart';
import 'package:app_ui_kit/components/paging/paging_config.dart';
import 'package:app_ui_kit/components/refresh/app_pull_down_refresh.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

typedef PagingListFetchFunc<T> = Future<List<T>> Function(
  int offset,
  int limit,
);

class PagingList<T> extends StatefulWidget {
  const PagingList({
    super.key,
    this.scrollDirection = Axis.vertical,
    this.physics,
    this.padding,
    this.shrinkWrap = false,
    required this.itemBuilder,
    required this.fetchListData,
    this.separatorBuilder,
    this.pageSize = 20,
    this.pagingController,
    this.onlyOnePage = false,
    this.clearOnFirstPage = true,
    this.noItemsFoundIndicatorBuilder,
    this.noMoreItemsIndicatorBuilder,
    this.firstPageProgressIndicatorBuilder,
    this.newPageProgressIndicatorBuilder,
    this.onEmpty,
    this.reverse = false,
    this.enablePullDown = true,
    this.delayFetch,
    this.addPageRequest = true,
    this.scrollController,
    this.isSliver = false,
    this.onPullDown,
  });

  final AppPagingController<int, T>? pagingController;

  final bool isSliver;

  final int pageSize;
  final ItemWidgetBuilder<T> itemBuilder;
  final PagingListFetchFunc<T>? fetchListData;
  final IndexedWidgetBuilder? separatorBuilder;
  final WidgetBuilder? noItemsFoundIndicatorBuilder;
  final WidgetBuilder? noMoreItemsIndicatorBuilder;
  final WidgetBuilder? firstPageProgressIndicatorBuilder;
  final WidgetBuilder? newPageProgressIndicatorBuilder;
  final VoidCallback? onEmpty;
  final void Function(AppPagingController<int, T> controller)? onPullDown;

  final Duration? delayFetch;
  final bool addPageRequest;

  // Paging Params
  final bool onlyOnePage;
  final bool clearOnFirstPage;

  // ListView params
  final ScrollController? scrollController;
  final Axis scrollDirection;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final EdgeInsets? padding;

  final bool reverse;
  final bool enablePullDown;

  @override
  _PagingListState<T> createState() => _PagingListState();
}

class _PagingListState<V> extends State<PagingList<V>> {
  late final AppPagingController<int, V> _pagingController;
  PageRequestListener<int>? listener;
  bool isEmpty = false;
  bool isDelayDone = true;

  @override
  void initState() {
    _pagingController =
        widget.pagingController ?? AppPagingController(firstPageKey: 0);
    if (widget.fetchListData != null) {
      _pagingController.init(
        fetchListDataParam: widget.fetchListData!,
        pageSizeParam: widget.pageSize,
      );
    }

    if (widget.delayFetch != null) {
      isDelayDone = false;
      Future<Object>.delayed(widget.delayFetch ?? Duration.zero).then((value) {
        isDelayDone = true;
        _fetchPage(0);
      });
    }
    if (widget.addPageRequest == true) {
      _pagingController.addPageRequestListener((pageKey) {
        if (isDelayDone) {
          _fetchPage(pageKey);
        }
      });
    }

    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems =
          await widget.fetchListData?.call(pageKey, widget.pageSize);
      final isLastPage = (newItems?.length ?? 0) < widget.pageSize;

      if (pageKey == 0 && (newItems?.length ?? 0) == 0) {
        widget.onEmpty?.call();
      }
      if (widget.clearOnFirstPage && pageKey == 0) {
        _pagingController.itemList = [];
      }
      if (isLastPage || widget.onlyOnePage) {
        _pagingController.appendLastPage(newItems ?? []);
      } else {
        final nextPageKey = pageKey + (newItems?.length ?? 0);
        _pagingController.appendPage(newItems ?? [], nextPageKey);
      }
    } catch (error) {
      if (kDebugMode) {
        _pagingController.error = error.toString();
      }
      //TODO: handle production error
      _pagingController.error = context.tr('Đã có lỗi xảy ra');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isEmpty) return const SizedBox.shrink();

    Widget pagedListView;

    if (widget.isSliver) {
      if (widget.padding != null) {
        return SliverPadding(
          padding: widget.padding!,
          sliver: _buildSliver(),
        );
      }
      return _buildSliver();
    }

    pagedListView = _buildNormal();

    // This will shrink the list to minimum size possible
    if (!widget.enablePullDown && widget.shrinkWrap) {
      return pagedListView;
    }

    return AppPullDownRefresh(
      indicatorAlignment: widget.scrollDirection == Axis.vertical
          ? Alignment.topCenter
          : Alignment.centerLeft,
      enable: widget.enablePullDown,
      refresh: () {
        if (widget.onPullDown != null) {
          widget.onPullDown?.call(_pagingController);
        } else {
          _pagingController.refresh();
        }
      },
      child: pagedListView,
    );
  }

  Widget _buildSliver() {
    return CheckPageRefreshEvent(
      controller: _pagingController,
      child: PagedSliverList<int, V>.separated(
        pagingController: _pagingController,
        builderDelegate: _getPagedChildBuilderDelegate(),
        separatorBuilder: widget.separatorBuilder == null
            ? (_, index) => const SizedBox.shrink()
            : (context, index) {
                return (index + 1) == _pagingController.itemList?.length
                    ? const SizedBox.shrink()
                    : (widget.separatorBuilder?.call(context, index) ??
                        const SizedBox.shrink());
              },
      ),
    );
  }

  Widget _buildNormal() {
    return CheckPageRefreshEvent(
      controller: _pagingController,
      child: PagedListView<int, V>.separated(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        scrollController: widget.scrollController,
        reverse: widget.reverse,
        scrollDirection: widget.scrollDirection,
        physics: widget.physics,
        shrinkWrap: widget.shrinkWrap,
        padding: (widget.padding ?? EdgeInsets.zero)
            .copyWith(bottom: widget.padding?.bottom),
        pagingController: _pagingController,
        builderDelegate: _getPagedChildBuilderDelegate(),
        separatorBuilder: widget.separatorBuilder == null
            ? (_, index) => const SizedBox.shrink()
            : (context, index) {
                return (index + 1) == _pagingController.itemList?.length
                    ? const SizedBox.shrink()
                    : (widget.separatorBuilder?.call(context, index) ??
                        const SizedBox.shrink());
              },
      ),
    );
  }

  PagedChildBuilderDelegate<V> _getPagedChildBuilderDelegate() {
    return PagedChildBuilderDelegate<V>(
      itemBuilder: widget.itemBuilder,
      firstPageProgressIndicatorBuilder:
          widget.firstPageProgressIndicatorBuilder ??
              context.pagingConfigData.progressIndicatorBuilder,
      newPageProgressIndicatorBuilder: widget.newPageProgressIndicatorBuilder ??
          context.pagingConfigData.progressIndicatorBuilder,
      firstPageErrorIndicatorBuilder: (_) => context.pagingConfigData
          .errorBuilder(context, _pagingController.error),
      newPageErrorIndicatorBuilder: (_) => context.pagingConfigData
          .errorBuilder(context, _pagingController.error),
      noItemsFoundIndicatorBuilder: (context) {
        widget.onEmpty?.call();
        if (widget.noItemsFoundIndicatorBuilder != null) {
          return widget.noItemsFoundIndicatorBuilder?.call(context) ??
              const SizedBox.shrink();
        }
        return context.pagingConfigData.emptyBuilder(context);
      },
      noMoreItemsIndicatorBuilder:
          widget.noMoreItemsIndicatorBuilder ?? (_) => const SizedBox.shrink(),
    );
  }
}
