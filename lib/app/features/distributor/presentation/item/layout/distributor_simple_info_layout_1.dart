import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';

class DistributorSimpleInfoLayout1 extends StatelessWidget {
  const DistributorSimpleInfoLayout1({
    super.key,
    required this.item,
    this.onPressed,
  });

  static DistributorSimpleInfoLayout1 demo() {
    return DistributorSimpleInfoLayout1(
      item: DistributorEntity.demo(),
    );
  }

  final DistributorEntity? item;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppTileText.semiBold(
      leading: AppAvatar(
        height: Dimens.ic_XL6,
        src: item?.img?.src,
      ),
      title: item?.name,
      subtitle: item?.type,
      onPressed: onPressed ?? () {},
    );
  }
}
