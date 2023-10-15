// ignore_for_file: invalid_use_of_protected_member

import 'dart:math' as math;

import 'package:app_utils/all_file/app_utils_all_file.dart';
import 'package:velocity_x/velocity_x.dart';

class SliverListExtend {
  static SliverList separator({required Widget Function(int index) delegateBuilder, required int childCount, required Widget separator, Widget? tail}) {
    final tailCount = tail != null ? 1 : 0;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          final int itemIndex = index ~/ 2;
          if (index.isEven) {
            if (tailCount == 1 && itemIndex == childCount) {
              return tail;
            }

            return delegateBuilder(itemIndex);
          }
          return separator;
        },
        semanticIndexCallback: (Widget widget, int localIndex) {
          if (localIndex.isEven) return localIndex ~/ 2;
          return null;
        },
        childCount: math.max(0, (childCount + tailCount) * 2 - 1),
      ),
    );
  }
}

// ignore: unnecessary_this
extension ThemeExtend on ThemeData {
  Color onPrimary() {
    return primaryTextTheme.bodyMedium!.color!;
  }

  Color actionColor() {
    return primaryColor;
  }

  Color onAccent() {
    return primaryTextTheme.bodyMedium!.color!;
  }

  Color lightGrey() {
    return hintColor.withOpacity(0.6);
  }
}

extension ListWidgetExtend<T extends Widget?> on List<T> {
  List<Widget> withDivider(Widget divider, {bool showLast = false, bool showFirst = false}) {
    if (isEmpty || length == 0) return [];

    List<Widget> rs = [];
    if (showFirst) {
      rs.add(divider);
    }
    forEach((element) {
      if (element != null) {
        rs.add(element);
        rs.add(divider);
      }
    });
    if (rs.length > 1 && !showLast) {
      rs.removeLast();
    }
    return rs;
  }
}

extension StringVelocityExtend on String {
  /// Get Text Widget for the String
  VxTextBuilder get text => VxTextBuilder(this).isIntrinsic;

  VxTextBuilder get textAuto => VxTextBuilder(this);
}
