import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/image/app_img.dart';
import 'package:app_ui_kit/components/skeleton/app_Shimmer.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    super.key,
    this.src,
    this.height = 50,
    this.fit = BoxFit.cover,
    this.background,
    this.showShadow = false,
    this.showBorder = true,
    this.loading = false,
    this.iconColor,
    this.border,
  });

  final String? src;
  final BoxFit fit;
  final double height;
  final bool showShadow;
  final bool showBorder;
  final bool loading;

  final Color? background;
  final Color? iconColor;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return AppShimmer(
        height: height,
        width: height,
        shape: BoxShape.circle,
      );
    }

    Widget img;
    if (src.isNullOrEmpty) {
      img = FittedBox(
        child: SvgPicture.asset(
          'assets/icon/ic_user_default.svg',
          package: 'app_ui_kit',
        ),
      );
    } else {
      img = AppImg(
        src,
        fit: fit,
      );
    }

    final color = background ?? Colors.transparent;
    final BoxDecoration boxDecoration;
    if (showShadow) {
      boxDecoration = AppDecor.cardBoxShadow(
        context,
        color: color,
        shape: BoxShape.circle,
        border: border,
      );
    } else if (showBorder) {
      boxDecoration = AppDecor.cardGrayBorder(
        context,
        color: color,
        shape: BoxShape.circle,
        border: border,
        borderWidth: 2,
      );
    } else {
      boxDecoration = BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: border,
      );
    }

    return SizedBox.square(
      dimension: height,
      child: Container(
        decoration: boxDecoration,
        clipBehavior: Clip.hardEdge,
        child: img.cornerRadius(Dimens.rad_max),
      ),
    );
  }
}
