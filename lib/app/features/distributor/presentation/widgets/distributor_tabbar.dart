import 'package:hlshop/all_file/all_file.dart';

class DistributorBody extends StatelessWidget {
  const DistributorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: DistributorStatus.values.length,
      child: Column(
        children: [
          TabBarWrapperUnderLine(
            child: AppTabBar(
              onTap: (status) {},
              padding: Dimens.edge_x,
              isScrollable: true,
              tabs: DistributorStatus.values.mapAsList(
                (item) {
                  return Tab(
                    child: item.displayValue.text.make(),
                  );
                },
              ),
            ),
          ),
          TabBarView(
            children: DistributorStatus.values.mapAsList(
              (status) => DistributorTab(distributorStatus: status),
            ),
          ).expand(),
        ],
      ),
    );
  }
}
