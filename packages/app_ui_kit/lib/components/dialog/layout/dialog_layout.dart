import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/primary/app_button.dart';
import 'package:app_ui_kit/components/dialog/dialog_config.dart';
import 'package:lottie/lottie.dart';

class SuccessDialogLayout extends StatelessWidget {
  const SuccessDialogLayout({
    super.key,
    this.title,
    this.content,
    this.child,
    this.onConfirm,
    this.onAutoDismiss,
  });

  final String? title;
  final String? content;
  final Widget? child;
  final VoidCallback? onConfirm;
  final VoidCallback? onAutoDismiss;

  @override
  Widget build(BuildContext context) {
    return AppDialogLayout(
      icon: Lottie.asset(
        'assets/lottie/ic_check.json',
        package: 'app_ui_kit',
        width: 55,
        height: 55,
        repeat: false,
      ),
      title: title,
      content: content,
      onConfirm: onConfirm ?? (onAutoDismiss != null ? null : () {}),
      buttonStyle: AppButtonTheme.success(context),
      child: child,
    );
  }
}

class ErrorDialogLayout extends StatelessWidget {
  const ErrorDialogLayout({
    super.key,
    this.title,
    this.content,
    this.child,
    this.onConfirm,
    this.onAutoDismiss,
  });

  final String? title;
  final String? content;
  final Widget? child;
  final VoidCallback? onConfirm;
  final VoidCallback? onAutoDismiss;

  @override
  Widget build(BuildContext context) {
    return AppDialogLayout(
      icon: Lottie.asset(
        'assets/lottie/ic_error.json',
        package: 'app_ui_kit',
        width: 70,
        height: 70,
        repeat: false,
      ),
      title: title,
      content: content,
      onConfirm: onConfirm ?? (onAutoDismiss != null ? null : () {}),
      buttonStyle: AppButtonTheme.error(context),
      child: child,
    );
  }
}

class AppDialogLayout extends StatelessWidget {
  const AppDialogLayout({
    super.key,
    this.icon,
    this.title,
    this.content,
    this.child,
    this.onConfirm,
    this.buttonStyle,
  });

  final Widget? icon;

  final String? title;
  final String? content;
  final Widget? child;
  final VoidCallback? onConfirm;
  final ButtonStyle? buttonStyle;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: context.dialogConfigData.defaultPadding,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (icon != null) icon,
          title?.text.titleLarge(context).center.make(),
          content?.text.colorDark(context).center.make(),
          if (child != null) child!,
          if (onConfirm != null)
            AppButton(
              label: context.dialogConfigData.confirmLabel,
              style: buttonStyle,
              onPressed: () {
                onConfirm?.call();
                Navigator.of(context, rootNavigator: true).pop();
              },
            ).pt16(),
        ].withDivider(Gaps.vGap12),
      ).py4(),
    );
  }
}
