import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/skeleton/app_shimmer.dart';

class AppShimmerList extends StatelessWidget {
  const AppShimmerList({
    super.key,
    required this.itemCount,
    required this.itemHeight,
    required this.itemWidth,
    this.spacing = 8,
    this.padding = EdgeInsets.zero,
    this.itemBorderRadius,
  });

  final int itemCount;
  final double itemHeight;
  final double itemWidth;
  final double spacing;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry? itemBorderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: itemCount,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: spacing);
        },
        itemBuilder: (BuildContext context, int index) {
          return AppShimmer(
            width: itemWidth,
            height: itemHeight,
            borderRadius: itemBorderRadius,
          );
        },
      ),
    );
  }
}
