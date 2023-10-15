import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';

class DistributorName extends StatelessWidget {
  const DistributorName({
    super.key,
    required this.distributorEntity,
  });

  final DistributorEntity? distributorEntity;

  void onOpenDistributorDetail(BuildContext context) {
    // context.pushRoute(DistributorDetailRoute());
  }

  @override
  Widget build(BuildContext context) {
    if (distributorEntity == null) {
      return const SizedBox.shrink();
    }
    return GestureDetector(
      // onTap: () => onOpenDistributorDetail(context),
      child: Row(
        children: [
          const Icon(PhosphorIcons.storefront),
          distributorEntity?.name?.text
              .titleMedium(context)
              .semiBold
              .make()
              .expand(),
        ].withDivider(Gaps.hGap8),
      ),
    );
  }
}
