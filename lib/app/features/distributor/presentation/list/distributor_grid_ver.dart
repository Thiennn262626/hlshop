// import 'package:hlshop/all_file/all_file.dart';
// import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
// import 'package:hlshop/app/features/distributor/presentation/item/distributor_item.dart';
// import 'package:hlshop/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
//
// class DistributorGridVer extends StatelessWidget {
//   const DistributorGridVer({
//     super.key,
//     required this.fetchListData,
//     this.padding,
//     this.spacing = Dimens.pad_default,
//     this.shrinkWrap,
//     this.physics,
//     this.onlyOnePage,
//     this.layoutType = DistributorItemLayoutType.layout1,
//   });
//
//   static DistributorGridVer demo(
//       {bool shrinkWrap = false, ScrollPhysics? physics, bool? onlyOnePage}) {
//     return DistributorGridVer(
//       shrinkWrap: shrinkWrap,
//       physics: physics,
//       onlyOnePage: onlyOnePage,
//       fetchListData: (page, pageSize) {
//         return Future.value(List.generate(8, (index) => index)
//             .map((e) => DistributorEntity.demo())
//             .toList());
//       },
//     );
//   }
//
//   final PagingListFetchFunc<DistributorEntity> fetchListData;
//   final EdgeInsets? padding;
//   final DistributorItemLayoutType layoutType;
//   final double spacing;
//
//   final bool? shrinkWrap;
//   final ScrollPhysics? physics;
//   final bool? onlyOnePage;
//
//   @override
//   Widget build(BuildContext context) {
//     var aspectRatio = 1.0;
//     const crossAxisCount = 4;
//     aspectRatio = layoutType.size.width / layoutType.size.height;
//
//     return PagingGrid<DistributorEntity>(
//       shrinkWrap: shrinkWrap ?? false,
//       physics: physics,
//       onlyOnePage: onlyOnePage ?? false,
//       padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: crossAxisCount,
//         mainAxisSpacing: spacing,
//         crossAxisSpacing: spacing,
//         childAspectRatio: aspectRatio,
//       ),
//       itemBuilder: (context, item, index) => DistributorItem(
//         item: item,
//         layoutType: layoutType,
//       ),
//       fetchListData: fetchListData,
//     );
//   }
// }
