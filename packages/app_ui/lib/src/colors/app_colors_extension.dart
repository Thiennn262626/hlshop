import 'package:flutter/material.dart';

extension AppThemeContextExtend on BuildContext {
  AppColorExtension get themeColor => Theme.of(this).extension<AppColorExtension>() ?? AppColorExtension.light;
}

@immutable
class AppColorExtension extends ThemeExtension<AppColorExtension> {
  const AppColorExtension({
    required this.greyDarkest,
    required this.greyDark,
    required this.greyLight,
    required this.greyNeutral,
    required this.greyLighter,
    required this.primaryDarkest,
    required this.primaryDark,
    required this.primary,
    required this.primaryLight,
    required this.primaryNeutral,
    required this.primaryLighter,
    required this.text,
    required this.textLink,
    required this.lightPrimary,
    required this.divider,
    required this.rating,
    required this.sharedLink,
    required this.successColor,
    required this.successDarkColor,
    required this.warningColor,
    required this.error,
    required this.infoColor,
    required this.actionColor,
    required this.actionColorInactive,
    required this.grey,
    required this.blue,
    required this.cyan,
    required this.red,
    required this.purple,
    required this.yellow,
    required this.green,
    required this.orange,
    required this.pink,
  });

  final Color text;
  final Color textLink;

  final Color lightPrimary;
  final Color divider;

  final Color rating;
  final Color sharedLink;

  final Color successColor;
  final Color successDarkColor;
  final Color warningColor;
  final Color error;
  final Color infoColor;

  final Color actionColor;
  final Color actionColorInactive;

  final Color greyDarkest;
  final Color greyDark;
  final Color grey;
  final Color greyLight;
  final Color greyNeutral;
  final Color greyLighter;

  final Color primaryDarkest;
  final Color primaryDark;
  final Color primary;
  final Color primaryLight;
  final Color primaryNeutral;
  final Color primaryLighter;

  final Color blue;
  final Color cyan;
  final Color red;
  final Color purple;
  final Color yellow;
  final Color green;
  final Color orange;
  final Color pink;

  static const AppColorExtension dark = AppColorExtension(
    text: Color(0xFF5F5F5F),
    textLink: Color(0xFF1890ff),
    divider: Color(0xFFF4F4F4),
    lightPrimary: Color(0xffb3daff),
    rating: Color(0xFFFD8205),
    sharedLink: Color(0xFF4A9B60),
    successColor: Color(0xFF20BF55),
    successDarkColor: Color(0xFF027A48),
    warningColor: Color(0xFFE29045),
    error: Color(0xFFE24545),
    infoColor: Color(0xFF1890ff),
    actionColor: Color(0xFF1890ff),
    actionColorInactive: Color(0xFF70787d),
    blue: Color(0xFF4A8CEF),
    cyan: Color(0xFF5EDFE8),
    red: Color(0xFFE92323),
    purple: Color(0xFFB55BED),
    yellow: Color(0xFFF9B83B),
    green: Color(0xFF44C542),
    orange: Color(0xFFFB822A),
    pink: Color(0xFFFF66B9),
    greyDarkest: Color(0xFF121212),
    greyDark: Color(0xFF333333),
    grey: Color(0xFF5F5F5F),
    greyLight: Color(0xFF808080),
    greyNeutral: Color(0xFFB7B7B7),
    greyLighter: Color(0xFFDCDCDC),
    primaryDarkest: Color(0xFF004767),
    primaryDark: Color(0xFF0284BE),
    primary: Color(0xFF19AAEB),
    primaryLight: Color(0xFF4BC6FD),
    primaryNeutral: Color(0xFF9BE0FF),
    primaryLighter: Color(0xFFE8F8FF),
  );

  static const AppColorExtension light = AppColorExtension(
    text: Color(0xff5F5F5F),
    textLink: Color(0xFF1890ff),
    divider: Color(0xFFF4F4F4),
    lightPrimary: Color(0xffb3daff),
    rating: Color(0xFFFD8205),
    sharedLink: Color(0xFF4A9B60),
    successColor: Color(0xFF20BF55),
    successDarkColor: Color(0xFF027A48),
    warningColor: Color(0xFFE29045),
    error: Color(0xFFE24545),
    infoColor: Color(0xFF1890ff),
    actionColor: Color(0xFF1890ff),
    actionColorInactive: Color(0xFF70787d),
    blue: Color(0xFF4A8CEF),
    cyan: Color(0xFF5EDFE8),
    red: Color(0xFFE92323),
    purple: Color(0xFFB55BED),
    yellow: Color(0xFFF9B83B),
    green: Color(0xFF44C542),
    orange: Color(0xFFFB822A),
    pink: Color(0xFFFF66B9),
    greyDarkest: Color(0xFF121212),
    greyDark: Color(0xFF333333),
    grey: Color(0xFF5F5F5F),
    greyLight: Color(0xFF808080),
    greyNeutral: Color(0xFFB7B7B7),
    greyLighter: Color(0xFFDCDCDC),
    primaryDarkest: Color(0xFF004767),
    primaryDark: Color(0xFF0284BE),
    primary: Color(0xFF19AAEB),
    primaryLight: Color(0xFF4BC6FD),
    primaryNeutral: Color(0xFF9BE0FF),
    primaryLighter: Color(0xFFE8F8FF),
  );

  @override
  AppColorExtension copyWith({Color? textStyle, Color? danger}) {
    return AppColorExtension(
      text: text,
      textLink: textLink,
      divider: divider,
      lightPrimary: lightPrimary,
      rating: rating,
      sharedLink: sharedLink,
      successColor: successColor,
      successDarkColor: successDarkColor,
      warningColor: warningColor,
      error: error,
      infoColor: infoColor,
      actionColor: actionColor,
      actionColorInactive: actionColorInactive,
      blue: blue,
      cyan: cyan,
      red: red,
      purple: purple,
      yellow: yellow,
      green: green,
      orange: orange,
      pink: pink,
      greyDarkest: greyDarkest,
      greyDark: greyDark,
      grey: grey,
      greyLight: greyLight,
      greyNeutral: greyNeutral,
      greyLighter: greyLighter,
      primaryDarkest: primaryDarkest,
      primaryDark: primaryDark,
      primary: primary,
      primaryLight: primaryLight,
      primaryNeutral: primaryNeutral,
      primaryLighter: primaryLighter,
    );
  }

  @override
  AppColorExtension lerp(ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }
    return AppColorExtension(
      text: Color.lerp(text, other.text, t) ?? text,
      textLink: Color.lerp(textLink, other.textLink, t) ?? textLink,
      divider: Color.lerp(divider, other.divider, t) ?? divider,
      lightPrimary: Color.lerp(lightPrimary, other.lightPrimary, t) ?? lightPrimary,
      rating: Color.lerp(rating, other.rating, t) ?? rating,
      sharedLink: Color.lerp(sharedLink, other.sharedLink, t) ?? sharedLink,
      successColor: Color.lerp(successColor, other.successColor, t) ?? successColor,
      successDarkColor: Color.lerp(successDarkColor, other.successDarkColor, t) ?? successDarkColor,
      warningColor: Color.lerp(warningColor, other.warningColor, t) ?? warningColor,
      error: Color.lerp(error, other.error, t) ?? error,
      infoColor: Color.lerp(infoColor, other.infoColor, t) ?? infoColor,
      actionColor: Color.lerp(actionColor, other.actionColor, t) ?? actionColor,
      actionColorInactive: Color.lerp(actionColorInactive, other.actionColorInactive, t) ?? actionColorInactive,
      blue: Color.lerp(blue, other.blue, t) ?? blue,
      cyan: Color.lerp(cyan, other.cyan, t) ?? cyan,
      red: Color.lerp(red, other.red, t) ?? red,
      purple: Color.lerp(purple, other.purple, t) ?? purple,
      yellow: Color.lerp(yellow, other.yellow, t) ?? yellow,
      green: Color.lerp(green, other.green, t) ?? green,
      orange: Color.lerp(orange, other.orange, t) ?? orange,
      pink: Color.lerp(pink, other.pink, t) ?? pink,
      greyDark: Color.lerp(greyDark, other.greyDark, t) ?? greyDark,
      greyDarkest: Color.lerp(greyDarkest, other.greyDarkest, t) ?? greyDarkest,
      grey: Color.lerp(grey, other.grey, t) ?? grey,
      greyLight: Color.lerp(greyLight, other.greyLight, t) ?? greyLight,
      greyNeutral: Color.lerp(greyNeutral, other.greyNeutral, t) ?? greyNeutral,
      greyLighter: Color.lerp(greyLighter, other.greyLighter, t) ?? greyLighter,
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t) ?? primaryDark,
      primaryDarkest: Color.lerp(primaryDarkest, other.primaryDarkest, t) ?? primaryDarkest,
      primaryLight: Color.lerp(primaryLight, other.primaryLight, t) ?? primaryLight,
      primaryNeutral: Color.lerp(primaryNeutral, other.primaryNeutral, t) ?? primaryNeutral,
      primaryLighter: Color.lerp(primaryLighter, other.primaryLighter, t) ?? primaryLighter,
    );
  }

  factory AppColorExtension.of(BuildContext context) {
    return Theme.of(context).extension as AppColorExtension;
  }

  factory AppColorExtension.form(bool isDark) {
    return isDark ? AppColorExtension.dark : AppColorExtension.light;
  }

  static ColorScheme colorSchemaFrom({required bool isDark}) {
    return isDark ? _colorSchemeDark : _colorScheme;
  }
}

const ColorScheme _colorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF19AAEB),
  onPrimary: Color(0xFFffffff),
  primaryContainer: Color(0xFFb7eaff),
  onPrimaryContainer: Color(0xFF001f2a),
  secondary: Color(0xFF44C542),
  onSecondary: Color(0xFFffffff),
  secondaryContainer: Color(0xFFcfe6f1),
  onSecondaryContainer: Color(0xFF071e26),
  tertiary: Color(0xFF5b5b7e),
  onTertiary: Color(0xFFffffff),
  tertiaryContainer: Color(0xFFe1dfff),
  onTertiaryContainer: Color(0xFF181837),
  error: Color(0xFFCB2222),
  onError: Color(0xFFffffff),
  errorContainer: Color(0xFFffdad4),
  onErrorContainer: Color(0xFF410001),
  background: Color(0xFFffffff),
  onBackground: Color(0xFF191c1e),
  surface: Color(0xffffffff),
  onSurface: Color(0xFF191c1e),
  outline: Color(0xFF70787d),
  surfaceVariant: Color(0xFFdce4e8),
  onSurfaceVariant: Color(0xFF40484c),
);

const ColorScheme _colorSchemeDark = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF19AAEB),
  onPrimary: Color(0xFFffffff),
  primaryContainer: Color(0xFFb7eaff),
  onPrimaryContainer: Color(0xFF001f2a),
  secondary: Color(0xFF44C542),
  onSecondary: Color(0xFFffffff),
  secondaryContainer: Color(0xFFcfe6f1),
  onSecondaryContainer: Color(0xFF071e26),
  tertiary: Color(0xFF5b5b7e),
  onTertiary: Color(0xFFffffff),
  tertiaryContainer: Color(0xFFe1dfff),
  onTertiaryContainer: Color(0xFF181837),
  error: Color(0xFFCB2222),
  onError: Color(0xFFffffff),
  errorContainer: Color(0xFFffdad4),
  onErrorContainer: Color(0xFF410001),
  background: Color(0xFFffffff),
  onBackground: Color(0xFF191c1e),
  surface: Color(0xffffffff),
  onSurface: Color(0xFF191c1e),
  outline: Color(0xFF70787d),
  surfaceVariant: Color(0xFFdce4e8),
  onSurfaceVariant: Color(0xFF40484c),
);
