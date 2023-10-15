import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.height,
    this.thickness,
  });

  const AppDivider.thin({
    super.key,
    this.height = 1,
    this.thickness = 1,
  });

  final double? height;
  final double? thickness;

  @override
  Widget build(BuildContext context) {
    if (height == null && thickness == null) {
      return const Divider(
        height: 6,
        thickness: 6,
      );
    }

    return Divider(
      height: height ?? 6,
      thickness: thickness ?? 6,
    );
  }
}
