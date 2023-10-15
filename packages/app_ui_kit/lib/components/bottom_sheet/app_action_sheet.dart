import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter/cupertino.dart';

class ActionSheetActionData {
  ActionSheetActionData({
    required this.text,
    required this.onPressed,
    this.isDestructiveAction = false,
  });

  final String text;
  final VoidCallback onPressed;
  final bool isDestructiveAction;
}

class AppActionSheet extends StatelessWidget {
  const AppActionSheet({
    super.key,
    this.title,
    this.message,
    required this.actions,
    this.showCancelButton = false,
    this.cancelText,
  });

  final String? title;
  final String? cancelText;
  final String? message;
  final List<ActionSheetActionData> actions;

  final bool showCancelButton;

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: title.isNotNullOrEmpty ? Text(title ?? '') : null,
      message: message.isNotNullOrEmpty ? Text(message ?? '') : null,
      cancelButton: showCancelButton
          ? CupertinoActionSheetAction(
              child: Text(cancelText ?? context.tr('Hủy')),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
      actions: actions
          .map(
            (actionData) => CupertinoActionSheetAction(
              isDestructiveAction: actionData.isDestructiveAction,
              onPressed: actionData.onPressed,
              child: Text(actionData.text),
            ),
          )
          .toList(),
    );
  }
}

extension AppActionSheetX on AppActionSheet {
  FutureOr<void> show(BuildContext context) {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => this,
    );
  }
}
