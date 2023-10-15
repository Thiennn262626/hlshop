import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

typedef KeyValueTextSpanBuilder = TextSpan Function(BuildContext context, String item);

class AppKeyValueListText extends StatelessWidget {
  const AppKeyValueListText({
    super.key,
    required this.children,
    this.separatorBuilder,
    this.crossAxisAlignment,
    this.valueTextSpanBuilder,
    this.keyTextSpanBuilder,
    this.hidePairValueNull = true,
    this.showLastSeparator = false,
    this.pairMaxLines,
  });

  final List<dynamic> children;

  final int? pairMaxLines;
  final KeyValueTextSpanBuilder? keyTextSpanBuilder;
  final KeyValueTextSpanBuilder? valueTextSpanBuilder;

  final Widget Function(BuildContext context, int index)? separatorBuilder;
  final CrossAxisAlignment? crossAxisAlignment;
  final bool showLastSeparator;
  final bool hidePairValueNull;

  @override
  Widget build(BuildContext context) {
    final list = _hidePairValueNull();

    if (list.isNullOrEmpty) {
      return const SizedBox.shrink();
    }

    final listPair = <Widget>[];
    for (var i = 0; i < list.length; i += 2) {
      final keyItem = list.getOrNull(i);
      final valueItem = list.getOrNull(i + 1);
      if (keyItem is String && valueItem is String) {
        listPair.add(
          _createStringPair(
            context,
            keyItem,
            valueItem,
            i,
          ),
        );
      } else {
        listPair.add(
          _createDynamicPair(
            context,
            keyItem,
            valueItem,
            i,
          ),
        );
      }

      if (separatorBuilder != null && (i < (list.length - 2) || showLastSeparator)) {
        listPair.add(
          separatorBuilder != null ? separatorBuilder!(context, i) : const SizedBox.shrink(),
        );
      }
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.stretch,
      children: listPair,
    );
  }

  List<dynamic> _hidePairValueNull() {
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
    return childrenFinal;
  }

  Widget _createStringPair(BuildContext context, String keyItem, String valueItem, int index) {
    return RichText(
      maxLines: pairMaxLines,
      overflow: pairMaxLines != null ? TextOverflow.ellipsis : TextOverflow.clip,
      text: TextSpan(
        children: [
          _getTextSpan(context, keyItem, _getKeyBuilder(context, keyItem, index)),
          _getTextSpan(context, valueItem, _getValueBuilder(context, valueItem, index)),
        ].filterNotNullList(),
      ),
    );
  }

  Widget _createDynamicPair(BuildContext context, dynamic keyItem, dynamic valueItem, int index) {
    return Row(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        _getWidgetOrText(context, keyItem, _getKeyBuilder(context, keyItem, index)),
        _getWidgetOrText(context, valueItem, _getValueBuilder(context, valueItem, index)),
      ],
    );
  }

  Widget _getWidgetOrText(BuildContext context, dynamic item, KeyValueTextSpanBuilder? builder) {
    if (item is Widget) {
      return item;
    } else if (item is String) {
      return RichText(text: _getTextSpan(context, item, builder));
    } else {
      return const SizedBox.shrink();
    }
  }

  TextSpan _getTextSpan(BuildContext context, String? item, KeyValueTextSpanBuilder? builder) {
    if (builder != null && item != null) {
      return builder(context, item);
    } else if (item != null) {
      return TextSpan(
        text: item,
        style: context.bodyMedium,
      );
    } else {
      return const TextSpan();
    }
  }

  KeyValueTextSpanBuilder? _getKeyBuilder(BuildContext context, dynamic value, int index) {
    if (keyTextSpanBuilder != null) {
      return keyTextSpanBuilder;
    } else if (value is String) {
      return (context, item) {
        return TextSpan(
          text: '$value: ',
          style: context.bodyMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        );
      };
    } else {
      return null;
    }
  }

  KeyValueTextSpanBuilder? _getValueBuilder(BuildContext context, dynamic value, int index) {
    if (valueTextSpanBuilder != null) {
      return valueTextSpanBuilder;
    } else if (value is String) {
      return (context, item) {
        return TextSpan(
          text: value,
          style: context.bodyMedium,
        );
      };
    }
  }
}
