import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:app_utils/app_utils.dart';

class ViewUtils {
  ViewUtils._();

  // Note: get maxWidth from LayoutBuilder
  static bool isTextExceedMaxLines({
    required String text,
    required TextStyle style,
    required int maxLine,
    double? maxWidth,
  }) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: maxLine,
      textDirection: TextDirection.ltr,
    )..layout(
        minWidth: 0,
        maxWidth: maxWidth ?? double.infinity,
      );

    return textPainter.didExceedMaxLines;
  }

  static bool isListPairExceedMaxLines({
    required List<String?> list,
    bool hidePairValueNull = true,
    required TextStyle style,
    required int maxLine,
    double? maxWidth,
  }) {
    var listFinal = <dynamic>[];
    if (hidePairValueNull) {
      list.forEachIndexed((element, index) {
        var isNotNull = element != null;
        if (element is String && element.isNullOrEmpty) {
          isNotNull = false;
        }
        if (index.isOdd && isNotNull) {
          listFinal
            ..add(list.getOrNull(index - 1))
            ..add(list.getOrNull(index));
        }
      });
    } else {
      listFinal = list;
    }

    if (listFinal.isEmpty) {
      return false;
    }

    String totalContent = '';
    for (var i = 0; i < listFinal.length; i += 2) {
      final keyItem = listFinal.getOrNull(i);
      final valueItem = listFinal.getOrNull(i + 1);
      if (keyItem is String && valueItem is String) {
        totalContent += '$keyItem$valueItem\n';
      }
    }

    return ViewUtils.isTextExceedMaxLines(
      text: totalContent,
      style: style,
      maxLine: maxLine,
      maxWidth: maxWidth,
    );
  }
}
