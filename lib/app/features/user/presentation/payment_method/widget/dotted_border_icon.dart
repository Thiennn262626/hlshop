import 'package:hlshop/all_file/all_file.dart';

class DottedBorderIcon extends StatelessWidget {
  const DottedBorderIcon({
    super.key,
    this.colorBorder,
    this.iconColor,
    this.borderType,
    this.padding,
    this.radius,
    this.icon,
  });

  final Color? colorBorder;
  final Color? iconColor;
  final BorderType? borderType;
  final EdgeInsets? padding;
  final Radius? radius;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [3.5, 3.5],
      color: colorBorder ?? const Color(0xff19AAEB),
      borderType: borderType ?? BorderType.RRect,
      radius: radius ?? Dimens.rad_circular_XS,
      padding: padding ?? Dimens.edge_XS3,
      child: Icon(
        icon ?? PhosphorIcons.plus,
        color: iconColor ?? const Color(0xff19AAEB),
      ),
    );
  }
}
