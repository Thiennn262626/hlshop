import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppBarTitleText extends StatelessWidget {
  const AppBarTitleText({
    Key? key,
    required this.title,
    this.titleMaxLine,
    this.color,
    this.textAlign,
    this.maxFontSize,
  }) : super(key: key);

  final String title;
  final int? titleMaxLine;
  final TextAlign? textAlign;
  final Color? color;
  final double? maxFontSize;

  @override
  Widget build(BuildContext context) {
    return title.textAuto.textStyle(context.textTheme.titleLarge).minFontSize(context.textS).maxLines(titleMaxLine ?? 1).align(textAlign ?? TextAlign.start).color(color).ellipsis.make();
  }
}
