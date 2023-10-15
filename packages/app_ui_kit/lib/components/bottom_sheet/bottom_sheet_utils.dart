import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class BottomSheetUtils {
  BottomSheetUtils._();

  static Future<T?> showMaterial<T>({
    required BuildContext context,
    required Widget child,
    bool? enableDrag,
    bool? isScrollControlled,
    BoxConstraints? constraints,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: isScrollControlled ?? true,
      constraints: constraints,
      // constraints: BoxConstraints(
      //   maxHeight: MediaQuery.of(context).size.height - MediaQueryData.fromWindow(window).padding.top,
      // ),
      builder: (_) => ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
        child: Material(child: child),
      ),
      enableDrag: enableDrag ?? true,
    );
  }
}
