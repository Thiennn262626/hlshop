import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/primary/app_button.dart';

class BtnClear extends StatelessWidget {
  const BtnClear({
    super.key,
    required this.onPressed,
    this.padding,
  });

  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? Dimens.edge_x_XS2,
      child: AppButton(
        onPressed: onPressed,
        child: const Icon(Icons.clear),
      ),
    );
  }
}
