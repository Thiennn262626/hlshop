import 'package:app_values/Dimens.dart';
import 'package:flutter/material.dart';

/// interval
class Gaps {
  Gaps._();

  /// Horizontal interval
  static const Widget hGap2 = SizedBox(width: Dimens.gap_dp2);
  static const Widget hGap4 = SizedBox(width: Dimens.gap_dp4);
  static const Widget hGap5 = SizedBox(width: Dimens.gap_dp5);
  static const Widget hGap6 = SizedBox(width: Dimens.gap_dp6);
  static const Widget hGap8 = SizedBox(width: Dimens.gap_dp8);
  static const Widget hGap10 = SizedBox(width: Dimens.gap_dp10);
  static const Widget hGap12 = SizedBox(width: Dimens.gap_dp12);
  static const Widget hGap15 = SizedBox(width: Dimens.gap_dp15);
  static const Widget hGap16 = SizedBox(width: Dimens.gap_dp16);
  static const Widget hGap20 = SizedBox(width: Dimens.gap_dp20);
  static const Widget hGap24 = SizedBox(width: Dimens.gap_dp24);
  static const Widget hGap28 = SizedBox(width: Dimens.gap_dp28);
  static const Widget hGap32 = SizedBox(width: Dimens.gap_dp32);
  static const Widget hGap42 = SizedBox(width: Dimens.gap_dp42);

  /// Vertical interval
  static const Widget vGap2 = SizedBox(height: Dimens.gap_dp2);
  static const Widget vGap4 = SizedBox(height: Dimens.gap_dp4);
  static const Widget vGap5 = SizedBox(height: Dimens.gap_dp5);
  static const Widget vGap6 = SizedBox(height: Dimens.gap_dp6);
  static const Widget vGap8 = SizedBox(height: Dimens.gap_dp8);
  static const Widget vGap10 = SizedBox(height: Dimens.gap_dp10);
  static const Widget vGap12 = SizedBox(height: Dimens.gap_dp12);
  static const Widget vGap15 = SizedBox(height: Dimens.gap_dp15);
  static const Widget vGap16 = SizedBox(height: Dimens.gap_dp16);
  static const Widget vGap20 = SizedBox(height: Dimens.gap_dp20);
  static const Widget vGap24 = SizedBox(height: Dimens.gap_dp24);
  static const Widget vGap32 = SizedBox(height: Dimens.gap_dp32);
  static const Widget vGap36 = SizedBox(height: Dimens.gap_dp36);
  static const Widget vGap42 = SizedBox(height: Dimens.gap_dp42);
  static const Widget vGap50 = SizedBox(height: Dimens.gap_dp50);

  static const Widget line = Divider();

  static const Widget vLine = SizedBox(
    width: 0.5,
    height: 24.0,
    child: VerticalDivider(),
  );

  static Widget bottomSpacing(BuildContext context) => SizedBox(height: MediaQuery.of(context).padding.bottom);

  static const Widget divider = Divider(
    height: 1,
    thickness: 1,
  );

  static const Widget dividerSpace = Divider(
    thickness: 1,
  );

  static const Widget dividerHalfSpace = Divider(
    thickness: 0.5,
  );
}
