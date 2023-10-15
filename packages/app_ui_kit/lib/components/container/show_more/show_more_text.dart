import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/container/show_more/show_more_layout.dart';
import 'package:app_ui_kit/components/container/show_more/show_more_layout_blend.dart';
import 'package:app_ui_kit/components/expansion/expand_widget_3.1/expand_widget.dart';

class ReadMoreExpand extends StatelessWidget {
  const ReadMoreExpand({
    super.key,
    required this.totalContent,
    this.maxLines = 8,
    required this.child,
    required this.indicatorBuilder,
    this.collapsedVisibilityFactor,
  });

  final String totalContent;
  final int maxLines;
  final Widget child;
  final IndicatorBuilder indicatorBuilder;
  final double? collapsedVisibilityFactor;

  @override
  Widget build(BuildContext context) {
    return CheckMoreTextBuilder(
      content: totalContent,
      maxLines: maxLines,
      builder: (isTextExceedMaxLines, moreTextWidget, lessTextWidget) {
        if (isTextExceedMaxLines) {
          return ExpandChild(
            collapsedVisibilityFactor: collapsedVisibilityFactor ?? 0.3,
            indicatorBuilder: indicatorBuilder,
            child: child,
          );
        } else {
          return child;
        }
      },
    );
  }
}

class ShowMoreText extends StatelessWidget {
  const ShowMoreText({
    super.key,
    this.content,
    this.maxLines,
    this.textStyle,
    required this.moreBtnBuilder,
    this.moreWidget,
    this.lessWidget,
  });

  final String? content;
  final TextStyle? textStyle;
  final int? maxLines;
  final Widget Function(bool isMore, VoidCallback onPressed) moreBtnBuilder;

  final Widget? moreWidget;
  final Widget? lessWidget;

  @override
  Widget build(BuildContext context) {
    if (content.isNullOrEmpty) {
      return const SizedBox.shrink();
    }

    final finalMaxLines = maxLines ?? 8;
    final finalTextStyle = textStyle ?? context.textTheme.bodyMedium!;
    final more = moreWidget ?? content!.text.textStyle(finalTextStyle).make();
    final less = lessWidget ?? content!.text.textStyle(finalTextStyle).maxLines(finalMaxLines).ellipsis.make();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;

        final textExceedMaxLines = ViewUtils.isTextExceedMaxLines(
          text: content!,
          style: finalTextStyle,
          maxLine: finalMaxLines,
          maxWidth: maxWidth,
        );

        return textExceedMaxLines
            ? ShowMoreLayoutBuilder(
                moreLayout: more,
                moreBtnBuilder: moreBtnBuilder,
                lessLayout: less,
              )
            : more;
      },
    );
  }
}

class ShowMoreTextBlend extends StatelessWidget {
  const ShowMoreTextBlend({
    super.key,
    this.content,
    this.textStyle,
    required this.maxLines,
    required this.moreBtnBuilder,
    this.moreWidget,
    this.lessWidget,
    this.lessMaxHeight,
  });

  final String? content;
  final TextStyle? textStyle;
  final int maxLines;
  final Widget Function(bool isMore, VoidCallback onPressed) moreBtnBuilder;

  final Widget? moreWidget;
  final Widget? lessWidget;

  final double? lessMaxHeight;

  @override
  Widget build(BuildContext context) {
    return CheckMoreTextBuilder(
      content: content,
      maxLines: maxLines,
      textStyle: textStyle,
      builder: (isTextExceedMaxLines, moreTextWidget, lessTextWidget) {
        final more = moreWidget ?? moreTextWidget;
        final less = lessWidget ?? lessTextWidget;
        // if (lessMaxHeight != null) {
        //   less = OverflowBox(
        //     child: less.maxHeight(lessMaxHeight ?? 170),
        //   );
        // }
        return isTextExceedMaxLines
            ? ShowMoreLayoutBlend(
                moreLayout: more,
                lessLayout: less,
                moreBtnBuilder: moreBtnBuilder,
              )
            : more;
      },
    );
  }
}

class CheckMoreTextBuilder extends StatelessWidget {
  const CheckMoreTextBuilder({
    super.key,
    this.content,
    this.maxLines = 8,
    this.textStyle,
    required this.builder,
  });

  final String? content;
  final TextStyle? textStyle;
  final int maxLines;
  final Widget Function(
    bool isTextExceedMaxLines,
    Widget moreTextWidget,
    Widget lessTextWidget,
  ) builder;

  @override
  Widget build(BuildContext context) {
    if (content.isNullOrEmpty) {
      return const SizedBox.shrink();
    }

    final finalMaxLines = maxLines;
    final finalTextStyle = textStyle ?? context.textTheme.bodyMedium!;
    final more = content!.text.textStyle(finalTextStyle).make();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final maxWidth = constraints.maxWidth;

        final isTextExceedMaxLines = ViewUtils.isTextExceedMaxLines(
          text: content!,
          style: finalTextStyle,
          maxLine: finalMaxLines,
          maxWidth: maxWidth,
        );
        return builder(
          isTextExceedMaxLines,
          more,
          content!.text.textStyle(finalTextStyle).maxLines(finalMaxLines).ellipsis.make(),
        );
      },
    );
  }
}
