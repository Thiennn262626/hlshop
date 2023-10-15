import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/photo_view/app_photo_view.dart';

class AppPhotoViewCounter extends StatelessWidget {
  const AppPhotoViewCounter({
    super.key,
    required this.controller,
    this.padding,
    this.emptyWidget,
  });

  final AppPhotoViewController controller;

  final EdgeInsets? padding;
  final Widget? emptyWidget;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AppPhotoViewCounterBuilder(
        controller: controller,
        builder: (context, index, total) {
          if (!(total > 1)) {
            return emptyWidget ?? const SizedBox.shrink();
          }
          return Container(
            decoration: BoxDecoration(
              color: const Color(0x4D000000),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: padding ?? const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              child: '${(index ?? 0) + 1}/$total'.text.colorOnPrimary(context).make(),
            ),
          );
        },
      ),
    );
  }
}

class AppPhotoViewCounterBuilder<T> extends StatelessWidget {
  const AppPhotoViewCounterBuilder({
    super.key,
    required this.controller,
    required this.builder,
  });

  final AppPhotoViewController<T> controller;
  final Widget Function(BuildContext context, int? currentIndex, int length) builder;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.curIndexLD,
      builder: (context, value, child) {
        return builder(
          context,
          value,
          controller.imgList?.length ?? 0,
        );
      },
    );
  }
}
