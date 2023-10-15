import 'dart:math' as math;

import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppSliverList {
  static SliverList separated({
    required IndexedWidgetBuilder itemBuilder,
    required IndexedWidgetBuilder separatorBuilder,
    required int itemCount,
  }) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final int itemIndex = index ~/ 2;
          if (index.isEven) {
            return itemBuilder(context, itemIndex);
          }
          return separatorBuilder(context, itemIndex);
        },
        semanticIndexCallback: (Widget widget, int localIndex) {
          if (localIndex.isEven) {
            return localIndex ~/ 2;
          }
          return null;
        },
        childCount: math.max(0, itemCount * 2 - 1),
      ),
    );
  }
}
