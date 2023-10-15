import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
import 'package:hlshop/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
import 'package:hlshop/app/features/distributor/presentation/item/layout/distributor_item_layout_1.dart';
import 'package:hlshop/app/features/distributor/presentation/item/layout/distributor_simple_info_layout_1.dart';

class DistributorItem extends StatelessWidget {
  const DistributorItem({
    super.key,
    this.item,
    this.layoutType,
    this.createState = false,
  });

  final DistributorEntity? item;
  final bool createState;
  final DistributorItemLayoutType? layoutType;

  @override
  Widget build(BuildContext context) {
    return _buildItem(item);
  }

  Builder _buildItem(DistributorEntity? item) {
    return Builder(
      builder: (context) {
        if (layoutType == DistributorItemLayoutType.layout1) {
          return DistributorItemLayout1(
            item: item,
          );
        }
        if (layoutType == DistributorItemLayoutType.layoutSimpleInfo1) {
          return DistributorSimpleInfoLayout1(
            item: item,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
