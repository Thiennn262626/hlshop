import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/rating/presentation/update_rating/cubit/update_rating_cubit.dart';

class UpdateRatingBody extends StatelessWidget {
  const UpdateRatingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UpdateRatingCubit>();
    return ReactiveForm(
      formGroup: context.read<UpdateRatingCubit>().form,
      child: AppScrollBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppRatingBar(
              initialRating: cubit.state.productRating.toDouble(),
              onRatingUpdate: cubit.updateRating,
            ).centered(),
            BlocBuilder<UpdateRatingCubit, UpdateRatingState>(
              builder: (context, state) {
                return DisplayImagesAttachment(
                  uploadImage: () {
                    cubit.uploadImage(
                      context: context,
                    );
                  },
                  deleteImage: (String? src) {
                    cubit.deleteImage(
                      src: src ?? '',
                    );
                  },
                  medias: cubit.state.images,
                );
              },
            ).pxDefault(),
            const ProductCommentInputField(
              formControlName: updateComment,
            ).pxDefault(),
            ServiceRow(
              title: 'Dịch vụ nhà cung cấp:'.tr(),
              initialRating: cubit.state.providerServiceRating.toDouble(),
              onRatingUpdate: cubit.updateProviderRating,
            ),
            ServiceRow(
              title: 'Dịch vụ vận chuyển:'.tr(),
              initialRating: cubit.state.deliveryServiceRating.toDouble(),
              onRatingUpdate: cubit.updateDeliverRating,
            ),
            ServiceRow(
              title: 'Người giao hàng:'.tr(),
              initialRating: cubit.state.shipperServiceRating.toDouble(),
              onRatingUpdate: cubit.updateShipperRating,
            ),
            AppButton(
              onPressed: () {
                context.read<UpdateRatingCubit>().submit();
              },
              label: 'Cập nhật'.tr(),
            ).pxDefault(),
          ].withDivider(Gaps.vGap8),
        ).pt16(),
      ),
    );
  }
}
