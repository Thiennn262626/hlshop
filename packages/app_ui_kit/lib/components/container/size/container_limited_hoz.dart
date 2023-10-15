import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:velocity_x/velocity_x.dart';

class ContainerLimitedHoz extends StatelessWidget {
  const ContainerLimitedHoz({
    super.key,
    required this.child,
    this.defaultMinWidth = 375,
  });

  final Widget child;
  final double defaultMinWidth;

  @override
  Widget build(BuildContext context) {
    return child.maxWidth([defaultMinWidth, MediaQuery.of(context).size.width].min() ?? defaultMinWidth);
  }
}
