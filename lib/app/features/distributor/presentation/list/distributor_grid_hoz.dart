// import 'package:hlshop/all_file/all_file.dart';
// import 'package:hlshop/app/features/distributor/domain/entity/distributor_entity.dart';
// import 'package:hlshop/app/features/distributor/presentation/item/distributor_item.dart';
// import 'package:hlshop/app/features/distributor/presentation/item/layout/distributor_item_layout.dart';
//
// class DistributorGridHoz extends StatelessWidget {
//   const DistributorGridHoz({
//     super.key,
//     required this.fetchListData,
//     this.padding,
//     this.spacing = Dimens.pad_default,
//     this.layoutType = DistributorItemLayoutType.layout1,
//   });
//
//   static DistributorGridHoz demo() {
//     return DistributorGridHoz(
//       fetchListData: (page, pageSize) {
//         return Future.value(List.generate(5, (index) => index)
//             .map((e) => DistributorEntity.demo())
//             .toList());
//       },
//     );
//   }
//
//   final PagingListFetchFunc<DistributorEntity> fetchListData;
//   final EdgeInsets? padding;
//   final double spacing;
//
//   final DistributorItemLayoutType layoutType;
//
//   @override
//   Widget build(BuildContext context) {
//     var aspectRatio = 1.0;
//     const crossAxisCount = 2;
//     final totalHeight = spacing + layoutType.size.height * crossAxisCount;
//     aspectRatio = layoutType.size.height / layoutType.size.width;
//
//     return SizedBox(
//       height: totalHeight,
//       child: PagingGrid<DistributorEntity>(
//         padding: padding ?? const EdgeInsets.symmetric(horizontal: 16),
//         scrollDirection: Axis.horizontal,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: crossAxisCount,
//           mainAxisSpacing: spacing,
//           crossAxisSpacing: spacing,
//           childAspectRatio: aspectRatio,
//         ),
//         itemBuilder: (context, item, index) => DistributorItem(
//           item: item,
//           layoutType: layoutType,
//         ),
//         fetchListData: fetchListData,
//       ),
//     );
//   }
// }
