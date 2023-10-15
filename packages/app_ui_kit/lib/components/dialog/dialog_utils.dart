import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/app_ui_kit.dart';

class DialogReturnMsg {
  DialogReturnMsg._();

  static String confirm = 'confirm';
  static String cancel = 'cancel';
  static String delete = 'delete';
}

class DialogUtils {
  DialogUtils._();

  static Future<dynamic> showWidgetDialogResult({
    required BuildContext context,
    required Widget child,
    bool? useRootNavigator,
    bool barrierDismissible = true,
  }) {
    return showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: Dimens.edge_default,
          child: child,
        );
      },
    );
  }

  static Future<dynamic> showSuccessDialog({
    required BuildContext context,
    String? title,
    String? content,
    VoidCallback? onConfirm,
    bool? useRootNavigator,
    bool barrierDismissible = true,
    Duration autoDismissDelay = const Duration(seconds: 3),
    VoidCallback? onAutoDismiss,
  }) {
    BuildContext? dialogContext;
    final rs = showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        dialogContext = context;
        return context.dialogConfigData.successDialogBuilder(
          context,
          title,
          content,
          onConfirm,
          onAutoDismiss,
        );
      },
    );

    if (onAutoDismiss != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        Future.delayed(autoDismissDelay, () {
          if (dialogContext?.mounted ?? false) {
            Navigator.of(dialogContext!, rootNavigator: true).pop();
            onAutoDismiss.call();
          }
        });
      });
    }
    return rs;
  }

  static Future<dynamic> showErrorDialog({
    required BuildContext context,
    Object? error,
    String? title,
    String? content,
    VoidCallback? onConfirm,
    bool? useRootNavigator,
    bool barrierDismissible = true,
    Duration autoDismissDelay = const Duration(seconds: 3),
    VoidCallback? onAutoDismiss,
  }) {
    BuildContext? dialogContext;
    final rs = showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator ?? true,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        dialogContext = context;

        return context.dialogConfigData.errorDialogBuilder(
          context,
          title,
          content,
          onConfirm,
          onAutoDismiss,
        );
      },
    );

    if (onAutoDismiss != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        Future.delayed(autoDismissDelay, () {
          if (dialogContext?.mounted ?? false) {
            Navigator.of(dialogContext!, rootNavigator: true).pop();
            onAutoDismiss.call();
          }
        });
      });
    }

    return rs;
  }

  static Future<dynamic?> showMaterialDialog({
    required BuildContext context,
    String? title,
    bool centerTitle = false,
    Widget? child,
    String? content,
    String? positiveLabel,
    FutureOr<void> Function()? positive,
    String? negativeLabel,
    FutureOr<void> Function()? negative,
    String? deleteLabel,
    FutureOr<void> Function()? delete,
    bool hideAction = false,
    ShapeBorder? shape,
    EdgeInsetsGeometry? contentPadding,
    bool barrierDismissible = true,
    bool useRootNavigator = true,
    EdgeInsets? insetPadding,
  }) {
    List<Widget> actionBuilder(BuildContext context) {
      if (hideAction) {
        return [];
      }
      final action = <Widget>[];

      if (negative != null) {
        action.add(
          AppButton(
            style: AppButtonTheme.ghost(context),
            label: negativeLabel ?? context.dialogConfigData.cancelLabel,
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pop(DialogReturnMsg.cancel);
              negative.call();
            },
          ),
        );
      }

      if (delete != null) {
        action.add(
          AppButton(
            style: AppButtonTheme.error(context),
            label: deleteLabel ?? context.dialogConfigData.deleteLabel,
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop(
                DialogReturnMsg.delete,
              );
              delete.call();
            },
          ),
        );
      } else {
        action.add(
          AppButton(
            style: AppButtonTheme.primary(context),
            label: positiveLabel ?? context.dialogConfigData.confirmLabel,
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pop(DialogReturnMsg.confirm);
              positive?.call();
            },
          ),
        );
      }
      return action;
    }

    return showDialog<dynamic>(
      context: context,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible,
      builder: (BuildContext context) {
        final action = actionBuilder(context);

        return AlertDialog(
          shape: shape,
          insetPadding: insetPadding ?? context.dialogConfigData.defaultPadding,
          title: title != null
              ? Text(
                  title,
                  style: context.theme.textTheme.titleMedium,
                  textAlign: centerTitle ? TextAlign.center : null,
                ).objectCenter()
              : null,
          content: child ??
              (content != null
                  ? Text(
                      content,
                      style: context.textTheme.bodyMedium,
                    )
                  : null),
          actions: action,
          buttonPadding: action.isEmpty ? EdgeInsets.zero : null,
          contentPadding: contentPadding ??
              const EdgeInsets.fromLTRB(18.0, 16.0, 18.0, 18.0),
        );
      },
    );
  }
}
