import 'package:app_values/app_values.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

extension FontSizeExtContext on BuildContext {
  double get textXS5 => FontSizeService().text_XS5;

  double get textXS4 => FontSizeService().text_XS4;

  double get textXS3 => FontSizeService().text_XS3;

  double get textXS2 => FontSizeService().text_XS2;

  double get textXS => FontSizeService().text_XS;

  double get textS => FontSizeService().text_S;

  double get textBase => FontSizeService().text_S;

  double get textL => FontSizeService().text_L;

  double get textXL => FontSizeService().text_XL;

  double get textXL2 => FontSizeService().text_XL2;

  double get textXL3 => FontSizeService().text_XL3;

  double get textXL4 => FontSizeService().text_XL4;

  double get textXL5 => FontSizeService().text_XL5;

  double get textXL6 => FontSizeService().text_XL6;
}

extension VxTextBuilderExtend on VxTextBuilder {
  VxTextBuilder get textXS5 => size(FontSizeService().text_XS5);

  VxTextBuilder get textXS4 => size(FontSizeService().text_XS4);

  VxTextBuilder get textXS3 => size(FontSizeService().text_XS3);

  VxTextBuilder get textXS2 => size(FontSizeService().text_XS2);

  VxTextBuilder get textXS => size(FontSizeService().text_XS);

  VxTextBuilder get textS => size(FontSizeService().text_S);

  VxTextBuilder get textBase => size(FontSizeService().text);

  VxTextBuilder get textL => size(FontSizeService().text_L);

  VxTextBuilder get textXL => size(FontSizeService().text_XL);

  VxTextBuilder get textXL2 => size(FontSizeService().text_XL2);

  VxTextBuilder get textXL3 => size(FontSizeService().text_XL3);

  VxTextBuilder get textXL4 => size(FontSizeService().text_XL4);

  VxTextBuilder get textXL5 => size(FontSizeService().text_XL5);

  VxTextBuilder titleMedium(BuildContext context) {
    return textStyle(context.theme.textTheme.titleMedium);
  }

  VxTextBuilder titleLarge(BuildContext context) {
    return textStyle(context.theme.textTheme.titleLarge);
  }

  VxTextBuilder headlineSmall(BuildContext context) {
    return textStyle(context.theme.textTheme.headlineSmall);
  }

  VxTextBuilder bodySmall(BuildContext context) {
    return textStyle(context.theme.textTheme.bodySmall);
  }

  VxTextBuilder bodyMedium(BuildContext context) {
    return textStyle(context.theme.textTheme.bodyMedium);
  }

  VxTextBuilder labelLarge(BuildContext context) {
    return textStyle(context.theme.textTheme.labelLarge);
  }

  VxTextBuilder labelSmall(BuildContext context) {
    return textStyle(context.theme.textTheme.labelSmall);
  }

  VxTextBuilder colorPrimary(BuildContext context) {
    velocityColor = Theme.of(context).primaryColor;
    return this;
  }

  VxTextBuilder colorOnPrimary(BuildContext context) {
    velocityColor = Theme.of(context).colorScheme.onPrimary;
    return this;
  }

  VxTextBuilder colorError(BuildContext context) {
    velocityColor = Theme.of(context).colorScheme.error;
    return this;
  }

  VxTextBuilder colorTransparent(BuildContext context) {
    velocityColor = Colors.transparent;
    return this;
  }

  VxTextBuilder colorHint(BuildContext context) {
    velocityColor = Theme.of(context).hintColor;
    return this;
  }
}

extension WidgetExtend on Widget {
  Widget isVisible(bool visible) {
    return visible ? this : const SizedBox.shrink();
  }

  Widget visible(bool visible, {Key? key}) => Opacity(
        key: key,
        opacity: visible ? 1 : 0,
        child: this,
      );

  Flexible flex({Key? key, int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(
        key: key,
        flex: flex,
        fit: fit,
        child: this,
      );

  // 430 screen width on mobile
  ConstrainedBox maxWidth(double maxWidth, {Key? key}) {
    return ConstrainedBox(
      key: key,
      constraints: BoxConstraints(maxWidth: maxWidth),
      child: this,
    );
  }

  ConstrainedBox maxHeight(double maxHeight, {Key? key}) {
    return ConstrainedBox(
      key: key,
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: this,
    );
  }

  ConstrainedBox minWidth(double minWidth, {Key? key}) {
    return ConstrainedBox(
      key: key,
      constraints: BoxConstraints(minWidth: minWidth),
      child: this,
    );
  }

  ConstrainedBox minHeight(double minHeight, {Key? key}) {
    return ConstrainedBox(
      key: key,
      constraints: BoxConstraints(minHeight: minHeight),
      child: this,
    );
  }

  Padding pExceptLeft(double padding, {Key? key}) => Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(0, padding, padding, padding),
        child: this,
      );

  Padding pExceptRight(double padding, {Key? key}) => Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(padding, padding, 0, padding),
        child: this,
      );

  Padding pExceptTop(double padding, {Key? key}) => Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(padding, 0, padding, padding),
        child: this,
      );

  Padding pExceptBottom(double padding, {Key? key}) => Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(padding, padding, padding, 0),
        child: this,
      );

  Padding pDefault({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.all(Dimens.pad_default),
        child: this,
      );

  Padding pDefaultExceptTop({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(
          bottom: Dimens.pad_default,
          left: Dimens.pad_default,
          right: Dimens.pad_default,
        ),
        child: this,
      );

  Padding pDefaultExceptBottom({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(
            top: Dimens.pad_default,
            left: Dimens.pad_default,
            right: Dimens.pad_default),
        child: this,
      );

  Padding pxDefault({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.pad_default),
        child: this,
      );

  Padding pyDefault({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(vertical: Dimens.pad_default),
        child: this,
      );

  // Padding horizontal

  Padding px6({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: this,
      );

  Padding px10({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: this,
      );

  Padding px14({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: this,
      );

  Padding px18({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: this,
      );

  Padding px22({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: this,
      );

  // padding vertical

  Padding py6({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: this,
      );

  Padding py10({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: this,
      );

  Padding py14({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: this,
      );

  Padding py18({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: this,
      );

  Padding py22({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.symmetric(vertical: 22),
        child: this,
      );

  // padding all

  Padding p6({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.all(6),
        child: this,
      );

  Padding p10({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.all(10),
        child: this,
      );

  Padding p14({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.all(14),
        child: this,
      );

  Padding p18({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.all(18),
        child: this,
      );

  Padding p22({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.all(22),
        child: this,
      );

  // padding left

  Padding pl2({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 2),
        child: this,
      );

  Padding pl4({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 4),
        child: this,
      );

  Padding pl6({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 6),
        child: this,
      );

  Padding pl8({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 8),
        child: this,
      );

  Padding pl10({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 10),
        child: this,
      );

  Padding pl12({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 12),
        child: this,
      );

  Padding pl14({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 14),
        child: this,
      );

  Padding pl16({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 16),
        child: this,
      );

  Padding pl18({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 18),
        child: this,
      );

  Padding pl20({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 10),
        child: this,
      );

  Padding pl22({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(left: 22),
        child: this,
      );

  // padding right

  Padding pr2({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 2),
        child: this,
      );

  Padding pr4({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 4),
        child: this,
      );

  Padding pr6({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 6),
        child: this,
      );

  Padding pr8({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 8),
        child: this,
      );

  Padding pr10({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 10),
        child: this,
      );

  Padding pr12({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 12),
        child: this,
      );

  Padding pr14({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 14),
        child: this,
      );

  Padding pr16({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 16),
        child: this,
      );

  Padding pr18({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 18),
        child: this,
      );

  Padding pr20({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 10),
        child: this,
      );

  Padding pr22({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(right: 22),
        child: this,
      );

  // padding top

  Padding pt2({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 2),
        child: this,
      );

  Padding pt4({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 4),
        child: this,
      );

  Padding pt6({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 6),
        child: this,
      );

  Padding pt8({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 8),
        child: this,
      );

  Padding pt10({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 10),
        child: this,
      );

  Padding pt12({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 12),
        child: this,
      );

  Padding pt14({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 14),
        child: this,
      );

  Padding pt16({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 16),
        child: this,
      );

  Padding pt18({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 18),
        child: this,
      );

  Padding pt20({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 20),
        child: this,
      );

  Padding pt22({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 22),
        child: this,
      );

  Padding pt24({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 24),
        child: this,
      );

  Padding pt26({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(top: 26),
        child: this,
      );

  // padding bottom

  Padding pb2({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 2),
        child: this,
      );

  Padding pb4({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 4),
        child: this,
      );

  Padding pb6({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 6),
        child: this,
      );

  Padding pb8({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 8),
        child: this,
      );

  Padding pb10({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 10),
        child: this,
      );

  Padding pb12({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 12),
        child: this,
      );

  Padding pb14({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 14),
        child: this,
      );

  Padding pb16({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 16),
        child: this,
      );

  Padding pb18({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 18),
        child: this,
      );

  Padding pb20({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 20),
        child: this,
      );

  Padding pb22({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 22),
        child: this,
      );

  Padding pb24({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 24),
        child: this,
      );

  Padding pb26({Key? key}) => Padding(
        key: key,
        padding: const EdgeInsets.only(bottom: 26),
        child: this,
      );
}
