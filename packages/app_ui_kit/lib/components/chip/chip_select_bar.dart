import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/chip/chip_item.dart';
import 'package:app_ui_kit/components/paging/paging_list.dart';
import 'package:app_ui_kit/components/radio_button/select_item_cubit.dart';

class ChipSelectBar<T> extends StatelessWidget {
  const ChipSelectBar({
    super.key,
    this.fetchListData,
    required this.getItemTitle,
    this.showAll = true,
    this.onlyOnePage = false,
  });

  final bool showAll;
  final bool onlyOnePage;
  final PagingListFetchFunc<T>? fetchListData;
  final String Function(T? item) getItemTitle;

  @override
  Widget build(BuildContext context) {
    final itemCubit = context.read<SelectItemCubit<T>>();
    return SizedBox(
      height: 36,
      child: PagingList<T?>(
        scrollDirection: Axis.horizontal,
        onlyOnePage: onlyOnePage,
        padding: Dimens.edge_x_default,
        separatorBuilder: (context, index) => Gaps.hGap8,
        itemBuilder: (context, item, index) {
          return BlocBuilder<SelectItemCubit<T>, T?>(
            builder: (context, state) {
              final selected = itemCubit.isSelected(item);
              return ChipItem(
                isSelected: selected,
                child: getItemTitle(item),
                onPressed: () {
                  itemCubit.selectItem(item);
                },
              );
            },
          );
        },
        fetchListData: (offset, limit) async {
          List<T?>? rs = await fetchListData?.call(offset, limit);
          if (offset == 0) {
            rs = [null, ...?rs];
          }
          return rs ?? [];
        },
      ),
    );
  }
}
