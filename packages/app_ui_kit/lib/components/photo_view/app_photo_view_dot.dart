import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/image/app_img.dart';
import 'package:app_ui_kit/components/photo_view/app_photo_view.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class AppPhotoViewDot extends StatefulWidget {
  const AppPhotoViewDot({
    super.key,
    required this.photoController,
    this.padding,
  });

  final AppPhotoViewController? photoController;
  final EdgeInsets? padding;
  static const double size = 65;

  @override
  State<AppPhotoViewDot> createState() => _AppPhotoViewDotState();
}

class _AppPhotoViewDotState extends State<AppPhotoViewDot> {
  late AutoScrollController _controller;

  @override
  void initState() {
    _controller = AutoScrollController(
      viewportBoundaryGetter: () => Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
    );
    widget.photoController?.curIndexLD.addListener(() {
      print('Dot - curIndexLD: ${widget.photoController?.curIndexLD.value}');
      _controller.scrollToIndex(
        widget.photoController!.curIndexLD.value,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.photoController == null) return const SizedBox.shrink();
    if (widget.photoController?.imgList?.isNotNullOrEmpty == false) return const SizedBox.shrink();

    const imageRad = Dimens.rad_XS;

    final previewWidgets = widget.photoController!.listPreview.mapAsList((img) => AppImg(
          img,
          fit: BoxFit.cover,
        ));

    final activeBoxDeco = BoxDecoration(
      borderRadius: BorderRadius.circular(imageRad),
      border: Border.all(color: context.theme.primaryColor, width: 1.5),
    );
    final inActiveBoxDeco = BoxDecoration(
      borderRadius: BorderRadius.circular(imageRad),
      border: Border.all(color: Colors.transparent, width: 1.5),
    );

    return SizedBox(
      height: AppPhotoViewDot.size,
      child: ListView.separated(
        controller: _controller,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.pad_XS),
        separatorBuilder: (context, index) => Gaps.hGap6,
        itemCount: previewWidgets.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AutoScrollTag(
          key: ValueKey(index),
          controller: _controller,
          index: index,
          child: AspectRatio(
            aspectRatio: widget.photoController!.dotRatio,
            child: GestureDetector(
              onTap: () {
                widget.photoController!.jumpToPage(index);
              },
              child: ValueListenableBuilder<int>(
                  valueListenable: widget.photoController!.curIndexLD,
                  child: previewWidgets[index].cornerRadius(imageRad / 1.3),
                  builder: (context, value, child) {
                    return Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: value == index ? activeBoxDeco : inActiveBoxDeco,
                      child: child,
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
