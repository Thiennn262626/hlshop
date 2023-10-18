import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/all_file.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppButtonTheme {
  AppButtonTheme._();

  static const double defaultRadius = Dimens.rad_XS;
  static const double defaultElevation = Dimens.elevation_zero;
  static const double defaultOpacity = 0.2;
  static const double defaultBorderWidth = 1;

  static ButtonStyle primary(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return ElevatedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      backgroundColor: Theme.of(context).primaryColor,
      padding: context.theme.buttonTheme.padding,
      elevation: defaultElevation,
      shadowColor: Colors.transparent,
    ).merge(props);
  }

  static ButtonStyle grey(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return color(
      context,
      color: context.themeColor.divider,
      textColor: context.themeColor.greyDark,
      props: props,
    );
  }

  static ButtonStyle color(
    BuildContext context, {
    required Color color,
    Color? textColor,
    AppButtonStyle? props,
  }) {
    return ElevatedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: textColor,
      backgroundColor: color,
      padding: context.theme.buttonTheme.padding,
      elevation: defaultElevation,
      shadowColor: Colors.transparent,
    ).merge(props);
  }

  static ButtonStyle success(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return ghost(
      context,
      props: props,
      color: context.themeColor.successColor,
    );
  }

  static ButtonStyle error(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return ghost(
      context,
      props: props,
      color: context.themeColor.error,
    );
  }

  static ButtonStyle circleGreyIcon(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return ElevatedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      shape: const CircleBorder(),
      foregroundColor: Theme.of(context).hintColor,
      backgroundColor: Theme.of(context).dividerColor,
      padding: context.theme.buttonTheme.padding,
      elevation: defaultElevation,
      shadowColor: Colors.transparent,
    ).merge(props);
  }

  static ButtonStyle ghost(
    BuildContext context, {
    AppButtonStyle? props,
    Color? color,
  }) {
    final styleFrom = ElevatedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor: color ?? Theme.of(context).primaryColor,
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      elevation: defaultElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(defaultRadius),
        side: BorderSide(
          color: color ?? Theme.of(context).primaryColor,
          width: defaultBorderWidth,
        ),
      ),
      shadowColor: Colors.transparent,
    );
    return styleFrom
        .copyWith(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              side: BorderSide(
                color: states.contains(MaterialState.disabled)
                    ? Theme.of(context).disabledColor
                    : (color ?? Theme.of(context).primaryColor),
                width: defaultBorderWidth,
              ),
            ),
          ),
        )
        .merge(props);
  }

  static ButtonStyle ghostGray(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return ghost(context, color: context.themeColor.grey);
  }

  static ButtonStyle none(
    BuildContext context, {
    AppButtonStyle? props,
  }) {
    return ElevatedButton.styleFrom(
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      foregroundColor:
          Theme.of(context).textTheme.bodyMedium?.color ?? Colors.black,
      backgroundColor: Theme.of(context).colorScheme.onPrimary,
      padding: EdgeInsets.zero,
      elevation: defaultElevation,
      shadowColor: Colors.transparent,
      side: BorderSide.none,
      minimumSize: Size.zero,
    ).merge(props);
  }
}

class AppButtonStyle extends ButtonStyle {
  const AppButtonStyle({
    super.foregroundColor,
    super.padding,
    super.elevation,
  });
}

extension ButtonStyleX on ButtonStyle {
  ButtonStyle big(BuildContext context) {
    return copyWith(
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 42,
          vertical: 14,
        ),
      ),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
