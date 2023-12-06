import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/paging/app_paging_controller.dart';
import 'package:app_ui_kit/components/paging/paging_config.dart';
import 'package:app_ui_kit/components/paging/paging_list.dart';
import 'package:app_ui_kit/components/refresh/app_pull_down_refresh.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class PagingGrid<T> extends StatefulWidget {
  const PagingGrid({
    super.key,
    this.scrollDirection = Axis.vertical,
    this.physics,
    this.padding,
    this.shrinkWrap = false,
    required this.itemBuilder,
    required this.fetchListData,
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
    required this.gridDelegate,
    this.onPullDown,
  });

  final AppPagingController<int, T>? pagingController;

  final bool isSliver;

  final int pageSize;
  final ItemWidgetBuilder<T> itemBuilder;
  final PagingListFetchFunc<T> fetchListData;
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
  final EdgeInsetsGeometry? padding;

  final bool reverse;
  final bool enablePullDown;

  final SliverGridDelegate gridDelegate;

  @override
  _PagingGridState<T> createState() => _PagingGridState();
}

class _PagingGridState<V> extends State<PagingGrid<V>> {
  late final AppPagingController<int, V> _pagingController;
  PageRequestListener<int>? listener;
  bool isEmpty = false;
  bool isDelayDone = true;

  @override
  void initState() {
    _pagingController =
        widget.pagingController ?? AppPagingController(firstPageKey: 0);
    _pagingController.init(
        fetchListDataParam: widget.fetchListData,
        pageSizeParam: widget.pageSize);

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
          await widget.fetchListData.call(pageKey, widget.pageSize);
      final isLastPage = (newItems.length) < widget.pageSize;

      if (widget.clearOnFirstPage && pageKey == 0) {
        _pagingController.itemList = [];
      }
      if (isLastPage || widget.onlyOnePage) {
        _pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + (newItems.length);
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      if (kDebugMode) {
        rethrow;
      }
      _pagingController.error = error;
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

  PagedSliverGrid<int, V> _buildSliver() {
    return PagedSliverGrid<int, V>(
      gridDelegate: widget.gridDelegate,
      pagingController: _pagingController,
      showNewPageErrorIndicatorAsGridChild: false,
      showNoMoreItemsIndicatorAsGridChild: false,
      showNewPageProgressIndicatorAsGridChild: false,
      builderDelegate: _getPagedChildBuilderDelegate(),
    );
  }

  PagedGridView<int, V> _buildNormal() {
    return PagedGridView<int, V>(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      gridDelegate: widget.gridDelegate,
      scrollController: widget.scrollController,
      reverse: widget.reverse,
      scrollDirection: widget.scrollDirection,
      physics: widget.physics,
      shrinkWrap: widget.shrinkWrap,
      padding: widget.padding,
      showNewPageErrorIndicatorAsGridChild: false,
      showNoMoreItemsIndicatorAsGridChild: false,
      showNewPageProgressIndicatorAsGridChild: false,
      pagingController: _pagingController,
      builderDelegate: _getPagedChildBuilderDelegate(),
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
      noMoreItemsIndicatorBuilder: widget.noMoreItemsIndicatorBuilder,
    );
  }
}
