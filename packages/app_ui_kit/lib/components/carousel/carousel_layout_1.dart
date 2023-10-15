import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselLayout1 extends StatefulWidget {
  const CarouselLayout1({
    super.key,
    required this.imgList,
    this.aspectRatio = 16 / 9,
    this.padding = const EdgeInsets.only(left: 16),
    this.indicatorPadding,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.showIndicator = true,
    this.onImgPressed,
  });

  final List<String>? imgList;
  final double aspectRatio;
  final EdgeInsets padding;
  final BorderRadiusGeometry borderRadius;

  // indicator
  final EdgeInsets? indicatorPadding;
  final bool showIndicator;
  final ValueChanged<int>? onImgPressed;

  @override
  State<CarouselLayout1> createState() => _CarouselLayout1State();
}

class _CarouselLayout1State extends State<CarouselLayout1> {
  late final PageController controller;

  @override
  void initState() {
    controller = PageController(
      viewportFraction: 0.92,
      keepPage: false,
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PageView.builder(
          padEnds: false,
          controller: controller,
          itemCount: widget.imgList?.length ?? 0,
          itemBuilder: (_, index) {
            return Padding(
              padding: widget.padding.copyWith(
                right: index == (widget.imgList?.length ?? 0) - 1
                    ? widget.padding.left
                    : 0,
              ),
              child: CardCupertinoEffect(
                onPressed: () {
                  widget.onImgPressed?.call(index);
                },
                child: ClipRRect(
                  borderRadius: widget.borderRadius,
                  child: AppImg(
                    widget.imgList.getOrNull(index),
                  ),
                ),
              ),
            );
          },
        ).aspectRatio(widget.aspectRatio),
        if (widget.showIndicator)
          Padding(
            padding: widget.indicatorPadding ??
                EdgeInsets.symmetric(
                  horizontal: widget.padding.left,
                ).copyWith(
                  top: widget.padding.left / 2,
                ),
            child: SmoothPageIndicator(
              controller: controller,
              count: widget.imgList?.length ?? 0,
              effect: WormEffect(
                dotHeight: 9,
                dotWidth: 8,
                strokeWidth: 1,
                spacing: 6,
                activeDotColor: context.theme.primaryColor,
                dotColor: context.theme.hintColor.withOpacity(0.5),
              ),
            ),
          ),
      ],
    );
  }
}
