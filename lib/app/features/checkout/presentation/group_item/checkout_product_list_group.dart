// import 'package:hlshop/all_file/all_file.dart';
// import 'package:hlshop/app/features/checkout/presentation/group_item/checkout_product_group_item.dart';
// import 'package:hlshop/app/features/checkout/presentation/main/bloc/checkout_bloc.dart';
//
// class CheckoutProductListGroup extends StatelessWidget {
//   const CheckoutProductListGroup({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CheckoutBloc, CheckoutState>(
//       builder: (context, state) {
//         final cartItemGroups =
//             context.read<CheckoutBloc>().state.cartItemGroups;
//         return ListView.separated(
//           padding: EdgeInsets.zero,
//           itemCount: cartItemGroups.length,
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           separatorBuilder: (context, index) => const AppDivider(),
//           itemBuilder: (context, index) {
//             final cartItemGroup = cartItemGroups[index];
//             return CheckoutProductGroupItem(
//               cartItemGroup: cartItemGroup,
//             );
//           },
//         );
//       },
//     );
//   }
// }
