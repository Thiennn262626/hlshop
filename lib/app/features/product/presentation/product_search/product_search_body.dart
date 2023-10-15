import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/domain/entity/common_entity.dart';
import 'package:hlshop/app/common/presentation/widgets/btn/btn_filter.dart';
import 'package:hlshop/app/features/product/presentation/list/product_grid_ver.dart';
import 'package:hlshop/app/features/product/presentation/product_search/cubit/product_search_cubit.dart';
import 'package:hlshop/app/features/product/presentation/product_search/widget/product_search_bar.dart';
import 'package:hlshop/app/features/shopping_cart/presentation/widget/shopping_cart_btn.dart';

class ProductSearchBody extends StatelessWidget {
  const ProductSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: OrderByType.values.length,
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          AppAppBarSliver(
            title: const ProductSearchBar(),
            args: AppBarArgs(
              floating: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(64),
                child: Row(
                  children: [
                    'Xếp theo: '.tr().text.make().pl16(),
                    AppButtonTabBar(
                      tabs: OrderByType.values.mapAsList(
                        (item) => Tab(text: item.displayValue.tr()),
                      ),
                    ).expand(),
                  ],
                ).pb12(),
              ),
              titleSpacing: 0,
              actions: [
                Gaps.hGap8,
                BtnFilter(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
                const ShoppingCartBtn(),
                Gaps.hGap4,
              ].withDivider(Gaps.hGap4, showLast: true),
            ),
          ),
          ProductGridVer(
            isSliver: true,
            fetchListData: context.read<ProductSearchCubit>().fetchProduct,
          ),
        ],
      ),
    );
  }
}
