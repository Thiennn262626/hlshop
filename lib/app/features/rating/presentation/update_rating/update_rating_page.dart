import 'package:hlshop/all_file/all_file.dart';

@RoutePage()
class UpdateRatingPage extends StatelessWidget {
  const UpdateRatingPage({
    super.key,
    required this.ratingItemEntity,
  });

  final RatingItemEntity ratingItemEntity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateRatingCubit(
        ratingItemEntity: ratingItemEntity,
      ),
      child: ApiItemConsumer<UpdateRatingCubit, UpdateRatingState>(
        getStatus: (state) => state.status,
        onDone: (state) async {
          await DialogUtils.showSuccessDialog(
            context: context,
            content: 'Cập nhật đánh giá thành công!',
            autoDismissDelay: 2.seconds,
            onAutoDismiss:() {
              context.router.pop(true);
            },
          );
        },
        child: Scaffold(
          appBar: AppAppBar(
            title: 'Chỉnh sửa đánh giá'.tr(),
          ),
          body: const UpdateRatingBody(),
        ),
      ),
    );
  }
}
