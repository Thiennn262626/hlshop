import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/container/key_value/app_key_value_list_layout.dart';

class AppKeyValueList extends StatelessWidget {
  const AppKeyValueList({
    super.key,
    required this.children,
    this.keyBuilder,
    this.separatorBuilder,
    this.crossAxisAlignment,
    this.showLastSeparator,
    this.valueBuilder,
    this.valueTextBuilder,
    this.valueFlex,
    this.keyExpand = true,
    this.valueExpand = false,
    this.keyTextBuilder,
    this.mainAxisSize,
    this.hidePairValueNull = true,
  });

  final List<dynamic> children;
  final Widget Function(BuildContext context, dynamic item)? keyBuilder;
  final Widget Function(BuildContext context, dynamic item)? valueBuilder;
  final Widget Function(BuildContext context, String item)? valueTextBuilder;
  final Widget Function(BuildContext context, String item)? keyTextBuilder;
  final Widget Function(BuildContext context, int index)? separatorBuilder;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool? showLastSeparator;
  final bool hidePairValueNull;

  // Customize
  final int? valueFlex;
  final bool keyExpand;
  final bool valueExpand;

  // Style
  final MainAxisSize? mainAxisSize;

  @override
  Widget build(BuildContext context) {
    var childrenFinal = <dynamic>[];
    if (hidePairValueNull) {
      children.forEachIndexed((element, index) {
        var isNotNull = element != null;
        if (element is String && element.isNullOrEmpty) {
          isNotNull = false;
        }
        if (index.isOdd && isNotNull) {
          childrenFinal
            ..add(children.getOrNull(index - 1))
            ..add(children.getOrNull(index));
        }
      });
    } else {
      childrenFinal = children;
    }
    return AppKeyValueListLayoutBuilder<dynamic, dynamic>(
      children: childrenFinal,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      keyBuilder: keyBuilder ??
          (BuildContext context, dynamic item) {
            if (item is String) {
              final textWidget = keyTextBuilder != null ? keyTextBuilder!(context, item) : item.text.make();

              if (keyExpand == true) {
                return textWidget.expand();
              } else {
                return textWidget;
              }
            } else if (item is Widget) {
              return item;
            }
            return const SizedBox.shrink();
          },
      valueBuilder: valueBuilder ??
          (BuildContext context, dynamic item) {
            if (item is String) {
              if (valueTextBuilder != null) {
                return valueTextBuilder!(context, item);
              }

              final valueWidget = item.text.align(TextAlign.right).colorDarkest(context).make().objectCenterRight();
              if (valueExpand == true) {
                return valueWidget.expand();
              }

              return Flexible(
                flex: valueFlex ?? 1,
                child: valueWidget,
              );
            } else if (item is Widget) {
              return item;
            }
            return const SizedBox.shrink();
          },
      separatorBuilder: separatorBuilder ?? (BuildContext context, int index) => Gaps.vGap8,
      showLastSeparator: showLastSeparator ?? false,
    );
  }
}
