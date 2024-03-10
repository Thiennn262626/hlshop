import 'package:app_ui_kit/components/refresh/app_pull_down_refresh.dart';
import 'package:hlshop/all_file/all_file.dart';

class ShoppingCartBody extends StatelessWidget {
  const ShoppingCartBody({super.key, required this.listItem});

  final List<ShoppingCartItemEntity> listItem;

  @override
  Widget build(BuildContext context) {
    return AppPullDownRefresh(
      refresh: () {
        context.read<ShoppingCartBloc>().add(
              const ShoppingCartEvent.fetch(),
            );
      },
      child: Column(
        children: [
          ShoppingCartGroupItem(listItem: listItem).expand(),
        ],
      ),
    );
  }
}
