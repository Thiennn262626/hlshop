import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/container/key_value/app_key_value_list_text.dart';
import 'package:app_ui_kit/components/container/show_more/show_more_layout.dart';

class ShowMoreLayoutTextList extends StatelessWidget {
  const ShowMoreLayoutTextList({
    super.key,
    required this.moreBtnBuilder,
    this.defaultShow = false,
    required this.valueList,
    required this.maxVisiblePair,
    required this.maxVisibleTotalLine,
    required this.pairMaxLine,
  });

  final List<String?> valueList;
  final Widget Function(bool isMore, VoidCallback onPressed) moreBtnBuilder;
  final bool defaultShow;

  final int maxVisiblePair;
  final int maxVisibleTotalLine;
  final int pairMaxLine;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final moreLayout = AppKeyValueListText(
          key: const Key('moreLayout'),
          separatorBuilder: (context, index) => Gaps.vGap4,
          children: valueList,
        );

        if (!ViewUtils.isListPairExceedMaxLines(
          list: valueList,
          style: context.textTheme.bodyMedium!,
          maxLine: maxVisibleTotalLine,
          maxWidth: constraints.maxWidth,
        )) {
          return moreLayout;
        }

        final lessLayout = AppKeyValueListText(
          key: const Key('lessLayout'),
          separatorBuilder: (context, index) => Gaps.vGap4,
          pairMaxLines: pairMaxLine,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: valueList.length > (maxVisiblePair * 2) ? valueList.sublist(0, maxVisiblePair * 2) : valueList,
        );

        return ShowMoreLayoutBuilder(
          moreBtnBuilder: moreBtnBuilder,
          moreLayout: moreLayout,
          lessLayout: lessLayout,
        );
      },
    );
  }
}
