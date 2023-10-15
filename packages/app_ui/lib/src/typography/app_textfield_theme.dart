import 'package:app_ui/app_ui.dart';
import 'package:app_ui/src/all_file.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppTextFieldTheme {
  static const double defaultRadius = Dimens.rad_XS;
  static const double defaultBorderWidth = 1;
  static const EdgeInsets defaultPadding = EdgeInsets.symmetric(vertical: 10, horizontal: 10);
  static const double defaultOpacity = 0.2;

  static InputDecoration primary(
    BuildContext context,
  ) {
    return const InputDecoration().copyWith(
      hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).hintColor,
          ),
      prefixIconConstraints: const BoxConstraints(
        minWidth: 45,
        maxWidth: 62,
      ),
      suffixIconConstraints: const BoxConstraints(
        minWidth: 45,
        maxWidth: 62,
      ),
    );
  }

  static InputDecoration primaryActiveHint(
    BuildContext context,
  ) {
    return primary(context).copyWith(
      hintStyle: Theme.of(context).textTheme.bodyMedium,
    );
  }

  static InputDecoration greyStyle(
    BuildContext context,
  ) {
    return const InputDecoration()
        .applyDefaults(
          InputDecorationTheme(
            filled: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            isDense: true,
            fillColor: context.themeColor.divider,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppTextFieldTheme.defaultRadius),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppTextFieldTheme.defaultRadius),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppTextFieldTheme.defaultRadius),
              borderSide: BorderSide(
                color: context.theme.primaryColor,
                width: AppTextFieldTheme.defaultBorderWidth,
              ),
            ),
          ),
        )
        .copyWith(
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).hintColor,
              ),
          prefixIconConstraints: const BoxConstraints(
            minWidth: 45,
            maxWidth: 62,
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 45,
            maxWidth: 62,
          ),
        );
  }

  static InputDecoration none(
    BuildContext context,
  ) {
    return const InputDecoration()
        .applyDefaults(
          Theme.of(context).inputDecorationTheme,
        )
        .copyWith(
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).hintColor,
              ),
          contentPadding: EdgeInsets.zero,
          isDense: true,
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        );
  }
}
