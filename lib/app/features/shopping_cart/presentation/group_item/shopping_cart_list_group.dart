// import 'package:hlshop/all_file/all_file.dart';
// import 'package:hlshop/app/features/shopping_cart/seft.dart';
//
// class ShoppingCartListGroup extends StatelessWidget {
//   const ShoppingCartListGroup({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
//       builder: (context, state) {
//         final items = state.itemGroups;
//         if (items.isEmpty) {
//           return 'Không có sản phẩm nào trong giỏ hàng'
//               .tr()
//               .text
//               .center
//               .makeCentered()
//               .p16();
//         }
//         return ListView.separated(
//           itemCount: items.length,
//           shrinkWrap: true,
//           separatorBuilder: (context, index) => const AppDivider(),
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return ShoppingCartGroupItem(
//               key: ObjectKey(item),
//               listItem: items, //20110263
//             );
//           },
//         );
//       },
//     );
//   }
// }
