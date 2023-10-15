import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/paging/cubit/paging_number_cubit.dart';
import 'package:flutter/cupertino.dart';

typedef HozItemWidgetBuilder<ItemType> = Widget Function(
  BuildContext context,
  ItemType item,
  int index,
);

class HorizontalPaging<T> extends StatelessWidget {
  const HorizontalPaging({
    super.key,
    required this.itemBuilder,
    this.separatorBuilder,
    this.shrinkWrap = false,
    this.padding,
    this.physics,
    this.onPageChange,
  });

  final HozItemWidgetBuilder<T> itemBuilder;
  final IndexedWidgetBuilder? separatorBuilder;
  final void Function(int page)? onPageChange;

  // style
  final EdgeInsetsGeometry? padding;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PagingNumberCubit, PagingNumberState>(
      listenWhen: (previous, current) => previous.currentPage != current.currentPage,
      listener: (context, state) {
        log('${state.status}');
        log('${state.currentPage}');
        onPageChange?.call(state.currentPage);
      },
      child: BlocBuilder<PagingNumberCubit, PagingNumberState>(
        builder: (context, state) {
          final listData = context.read<PagingNumberCubit>().getCurrentPageListData();
          if (state.status == PagingNumberStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          return ListView.separated(
            shrinkWrap: shrinkWrap,
            physics: physics,
            padding: padding,
            itemBuilder: (context, index) {
              final item = listData.getOrNull(index) as T?;
              if (item == null) {
                return const SizedBox.shrink();
              }
              return itemBuilder(context, item, index);
            },
            separatorBuilder: separatorBuilder ?? (context, index) => const SizedBox.shrink(),
            itemCount: listData?.length ?? 0,
          );
        },
      ),
    );
  }
}

class HorizontalPagingIndicator extends StatelessWidget {
  const HorizontalPagingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PagingNumberCubit, PagingNumberState>(
      builder: (context, state) {
        final showPage = state.totalPage != 0 && (context.read<PagingNumberCubit>().getCurrentPageListData()?.length ?? 0) != 0;
        return Row(
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: !context.read<PagingNumberCubit>().hasPrevious() || !showPage
                  ? null
                  : () {
                      context.read<PagingNumberCubit>().previousPage();
                    },
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
            if (showPage)
              [
                    state.currentPage,
                    state.totalPage,
                  ].joinWithoutNull('/')?.text.center.make().expand() ??
                  const Spacer(),
            if (!showPage) const Spacer(),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: !context.read<PagingNumberCubit>().hasNext() || !showPage
                  ? null
                  : () {
                      context.read<PagingNumberCubit>().nextPage();
                    },
              child: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        );
      },
    );
  }
}
