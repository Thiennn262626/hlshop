import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class ProductRatingPage extends StatelessWidget {
  const ProductRatingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductRatingCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<ProductRatingCubit, ProductRatingState>(
          listener: _onStateChanged,
          child: const Scaffold(
            appBar: AppAppBar(
              title: 'title',
            ),
            body: _PageBodyLoading(
              child: ProductRatingBody(),
            ),
          ),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, ProductRatingState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}

class _PageBodyLoading extends StatelessWidget {
  const _PageBodyLoading({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductRatingCubit, ProductRatingState>(
      builder: (context, state) {
        // if (state.status == ItemDetailStatus.error) {
        //   return SimpleErrorText(error: state.errorMsg ?? '');
        // }
        final isLoading = state.status == ItemStatus.loading ||
            state.status == ItemStatus.initial;

        return child;
      },
    );
  }
}
