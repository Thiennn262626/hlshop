import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class CheckTextExceed extends StatelessWidget {
  const CheckTextExceed({
    super.key,
    required this.content,
    required this.textStyle,
    required this.builder,
    required this.maxLine,
  });

  final String content;
  final int maxLine;
  final TextStyle textStyle;
  final Widget Function(
      BuildContext context, TextStyle textStyle, bool isExceedMaxLines) builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final titleExceedMaxLines = ViewUtils.isTextExceedMaxLines(
          text: content,
          style: textStyle,
          maxLine: maxLine,
          maxWidth: constraints.maxWidth * 0.9,
        );

        return builder(
          context,
          textStyle,
          titleExceedMaxLines,
        );
      },
    );
  }
}
