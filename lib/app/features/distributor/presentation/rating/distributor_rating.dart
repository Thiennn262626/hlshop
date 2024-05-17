import 'package:hlshop/all_file/all_file.dart';

class DistributorRatingSimple extends StatelessWidget {
  const DistributorRatingSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DistributorRatingCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<DistributorRatingCubit, DistributorRatingState>(
          listener: _onStateChanged,
          child: const DistributorRatingSimpleLayout1(),
        );
      }),
    );
  }

  void _onStateChanged(BuildContext context, DistributorRatingState state) {
    if (state.status == ItemStatus.error) {
      DialogUtils.showErrorDialog(
        context: context,
        content: context.getAppErrorMsg(state.error),
        error: state.error,
      );
    }
  }
}
