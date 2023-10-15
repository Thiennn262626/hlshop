import 'package:hlshop/all_file/all_file.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

// TODO: demo
// _demo() {
//   final selectItem = await BottomSheetUtils.showMaterial(context: context, child: SelectItemPopup<AddressEntity>(
//     searchListData: (offset, limit, search) {
//       return addressRepo.getAddressListSearch(
//         limit: limit,
//         offset: offset,
//         search: search,
//       );
//     },
//   );
//   print(selectItem?.name)
// }

class SelectItemPopup<T> extends StatefulWidget {
  const SelectItemPopup({
    super.key,
    this.searchListData,
    required this.itemToString,
    required this.title,
    this.itemBuilder,
    this.padding,
  });

  final Future<List<T>> Function(
    int offset,
    int limit,
    String search,
  )? searchListData;
  final String? Function(T item) itemToString;
  final Object title;
  final ItemWidgetBuilder<T>? itemBuilder;
  final EdgeInsets? padding;

  @override
  State<SelectItemPopup<T>> createState() => _SelectItemPopupState<T>();
}

class _SelectItemPopupState<T> extends State<SelectItemPopup<T>> {
  final AppPagingController<int, T> _appPagingController =
      AppPagingController(firstPageKey: 0);
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: _buildTitle(),
      ),
      body: Column(
        children: [
          AppSearchBar(
            controller: _controller,
            onChanged: (value) => _appPagingController.refresh(),
          ).pDefault(),
          PagingList<T>(
            fetchListData: (offset, limit) {
              return widget.searchListData!(
                offset,
                limit,
                _controller.text.trim(),
              );
              // put input search value here
            },
            pagingController: _appPagingController,
            padding: (widget.padding ?? Dimens.edge_XS2).copyWith(
              bottom: MediaQuery.of(context).padding.bottom,
              top: 0,
            ),
            itemBuilder: widget.itemBuilder ??
                (context, item, index) {
                  return AppTileText(
                    title: widget.itemToString(item),
                    onPressed: () {
                      Navigator.pop(context, item);
                    },
                  );
                },
          ).expand(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    final title = widget.title;
    if (title is String) {
      return title.text.semiBold.make();
    }
    if (title is Widget) {
      return title;
    }
    return const SizedBox.shrink();
  }
}
