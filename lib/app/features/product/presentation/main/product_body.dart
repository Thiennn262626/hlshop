import 'package:hlshop/all_file/all_file.dart';

class ProductBody extends StatelessWidget {
  const ProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScrollBody(
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          final item = state.item;
          return const Column();
        },
      ),
    );
  }
}
