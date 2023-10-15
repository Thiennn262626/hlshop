import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';
import 'package:app_ui_kit/components/skeleton/app_Shimmer.dart';

part 'app_photo_view_controller.dart';

class AppPhotoView<T> extends StatelessWidget {
  const AppPhotoView({
    super.key,
    required this.photoController,
  });

  final AppPhotoViewController<T>? photoController;

  @override
  Widget build(BuildContext context) {
    if (photoController == null) return const SizedBox.shrink();

    return AspectRatio(
      aspectRatio: photoController!.imageRatio,
      child: photoController!.listCarousel.isNullOrEmpty
          ? const AppShimmer()
          : PageView.builder(
              controller: photoController!.controller,
              physics: const PageScrollPhysics(),
              onPageChanged: (value) {
                if (photoController!.isOnSliding == false &&
                    photoController!.curIndexLD.value != value) {
                  photoController!.curIndexLD.value = value;
                }
              },
              itemCount: photoController?.listCarousel.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final currentValue = photoController!.imgList.getOrNull(index);

                return AppImg.fullSize(
                  currentValue,
                  fit: BoxFit.contain,
                );
              },
            ),
    );
  }
}
