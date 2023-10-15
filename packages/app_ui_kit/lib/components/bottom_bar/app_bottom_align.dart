import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppBottomAlign extends StatelessWidget {
  const AppBottomAlign({super.key, required this.child, required this.bottomBar});

  final Widget child;
  final Widget bottomBar;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Align(
          alignment: Alignment.bottomCenter,
          child: bottomBar,
        ),
      ],
    );
  }
}
