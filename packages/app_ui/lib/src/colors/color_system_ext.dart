import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

extension ColorVxTextBuilderExtend on VxTextBuilder {
  VxTextBuilder colorDarkest(BuildContext context) {
    velocityColor = context.themeColor.greyDarkest;
    return this;
  }

  VxTextBuilder colorDark(BuildContext context) {
    velocityColor = context.themeColor.greyDark;
    return this;
  }

  VxTextBuilder colorNeutral(BuildContext context) {
    velocityColor = context.themeColor.greyNeutral;
    return this;
  }

  VxTextBuilder colorLight(BuildContext context) {
    velocityColor = context.themeColor.greyLight;
    return this;
  }

  VxTextBuilder colorLighter(BuildContext context) {
    velocityColor = context.themeColor.greyLighter;
    return this;
  }

  VxTextBuilder colorPrimaryDarkest(BuildContext context) {
    velocityColor = context.themeColor.primaryDarkest;
    return this;
  }

  VxTextBuilder colorPrimaryDark(BuildContext context) {
    velocityColor = context.themeColor.primaryDark;
    return this;
  }

  VxTextBuilder colorPrimaryNeutral(BuildContext context) {
    velocityColor = context.themeColor.primaryNeutral;
    return this;
  }

  VxTextBuilder colorPrimaryLight(BuildContext context) {
    velocityColor = context.themeColor.primaryLight;
    return this;
  }

  VxTextBuilder colorPrimaryLighter(BuildContext context) {
    velocityColor = context.themeColor.primaryLighter;
    return this;
  }
}
