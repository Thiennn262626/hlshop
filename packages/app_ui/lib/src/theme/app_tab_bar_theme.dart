import 'package:app_ui/src/all_file.dart';
import 'package:app_ui/src/colors/app_colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class AppTabBarTheme {
  AppTabBarTheme._();

  static ThemeData getTabPrimary(
    BuildContext context, {
    double? borderRadius,
    TextStyle? labelStyle,
    TextStyle? unselectedLabelStyle,
    EdgeInsetsGeometry? labelPadding,
  }) {
    return Theme.of(context).copyWith(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      tabBarTheme: TabBarTheme(
        indicator: RectangularIndicator(
          topLeftRadius: borderRadius ?? Dimens.rad_max,
          topRightRadius: borderRadius ?? Dimens.rad_max,
          bottomLeftRadius: borderRadius ?? Dimens.rad_max,
          bottomRightRadius: borderRadius ?? Dimens.rad_max,
          color: context.themeColor.lightPrimary,
        ),
        labelPadding: labelPadding ?? const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        labelColor: Theme.of(context).primaryColor,
        labelStyle: labelStyle ?? Theme.of(context).textTheme.bodyMedium,
        unselectedLabelColor: Theme.of(context).textTheme.bodyMedium!.color,
        unselectedLabelStyle: unselectedLabelStyle ?? Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  static ThemeData getTabPrimarySquare(
    BuildContext context, {
    TextStyle? labelStyle,
    EdgeInsetsGeometry? labelPadding,
    TextStyle? unselectedLabelStyle,
  }) {
    return getTabPrimary(
      context,
      borderRadius: Dimens.rad_XS,
      labelStyle: labelStyle ?? Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
      labelPadding: labelPadding,
      unselectedLabelStyle: unselectedLabelStyle,
    );
  }

  static ThemeData getTabUnderlineIndicatorBoldText(
    BuildContext context, {
    EdgeInsetsGeometry? labelPadding,
  }) {
    return AppTabBarTheme.getTabUnderlineIndicator(
      context,
      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
      labelPadding: labelPadding,
    );
  }

  static ThemeData getTabUnderlineIndicator(
    BuildContext context, {
    TextStyle? labelStyle,
    TextStyle? unselectedLabelStyle,
    EdgeInsetsGeometry? labelPadding,
  }) {
    return Theme.of(context).copyWith(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      tabBarTheme: TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 3.0,
            color: Theme.of(context).primaryColor,
          ),
          insets: EdgeInsets.symmetric(horizontal: 0.0),
        ),
        labelColor: Theme.of(context).primaryColor,
        labelStyle: labelStyle ?? Theme.of(context).textTheme.bodyMedium,
        unselectedLabelColor: Theme.of(context).textTheme.bodyMedium?.color,
        unselectedLabelStyle: unselectedLabelStyle ?? Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }

  static ThemeData getTabSecondary(BuildContext context) {
    return Theme.of(context).copyWith(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      tabBarTheme: TabBarTheme(
        indicator: RectangularIndicator(
          topLeftRadius: Dimens.rad_max,
          topRightRadius: Dimens.rad_max,
          bottomLeftRadius: Dimens.rad_max,
          bottomRightRadius: Dimens.rad_max,
          color: Theme.of(context).primaryColor,
        ),
        labelColor: Theme.of(context).colorScheme.onPrimary,
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w700),
        unselectedLabelColor: Theme.of(context).hintColor,
        unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
    );
  }
}
