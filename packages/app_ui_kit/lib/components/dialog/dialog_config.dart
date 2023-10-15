import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/dialog/layout/dialog_layout.dart';
import 'package:flutter/cupertino.dart';

typedef DialogButtonBuilder = Widget Function(BuildContext context);

typedef DialogAlertBuilder = Widget Function(
  BuildContext context,
  String? title,
  String? content,
  VoidCallback? onConfirm,
  VoidCallback? onAutoDismiss,
);

extension DialogConfigDataExtension on BuildContext {
  DialogConfigData get dialogConfigData => DialogConfiguration.of(this);
}

class DialogConfigData {
  DialogConfigData({
    String? confirmLabel,
    String? cancelLabel,
    String? deleteLabel,
    EdgeInsets? defaultPadding,
    DialogAlertBuilder? successDialogBuilder,
    DialogAlertBuilder? errorDialogBuilder,
  }) {
    this.defaultPadding = defaultPadding ??
        const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        );
    this.confirmLabel = confirmLabel ?? 'Confirm';
    this.cancelLabel = cancelLabel ?? 'Cancel';
    this.deleteLabel = deleteLabel ?? 'Delete';
    this.successDialogBuilder = successDialogBuilder ??
        (context, title, content, onConfirm, onAutoDismiss) {
          return SuccessDialogLayout(
            title: title,
            content: content,
            onConfirm: onConfirm,
            onAutoDismiss: onAutoDismiss,
          );
        };
    this.errorDialogBuilder = errorDialogBuilder ??
        (context, title, content, onConfirm, onAutoDismiss) {
          return ErrorDialogLayout(
            title: title,
            content: content,
            onConfirm: onConfirm,
            onAutoDismiss: onAutoDismiss,
          );
        };
  }

  late final EdgeInsets defaultPadding;

  late final String confirmLabel;
  late final String cancelLabel;
  late final String deleteLabel;

  late final DialogAlertBuilder successDialogBuilder;
  late final DialogAlertBuilder errorDialogBuilder;
}

class DialogConfiguration extends InheritedWidget {
  const DialogConfiguration({
    super.key,
    required this.configData,
    required super.child,
  });

  final DialogConfigData configData;

  static DialogConfigData of(BuildContext context) {
    final configWidget =
        context.dependOnInheritedWidgetOfExactType<DialogConfiguration>();
    return configWidget?.configData ?? DialogConfigData();
  }

  @override
  bool updateShouldNotify(covariant DialogConfiguration oldWidget) {
    return configData != oldWidget.configData;
  }
}
