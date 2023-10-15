import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/distributor/presentation/rating/cubit/distributor_rating_cubit.dart';
import 'package:hlshop/app/features/distributor/presentation/rating/distributor_rating_body.dart';

class DistributorRatingSimple extends StatelessWidget {
  const DistributorRatingSimple({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DistributorRatingCubit()..fetchItem(),
      child: Builder(builder: (context) {
        return BlocListener<DistributorRatingCubit, DistributorRatingState>(
          listener: _onStateChanged,
          child: DistributorRatingSimpleLayout1(),
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
