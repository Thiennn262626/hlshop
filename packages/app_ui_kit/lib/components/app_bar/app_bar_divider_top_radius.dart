import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppBarDividerTopRadius extends StatelessWidget {
  const AppBarDividerTopRadius({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Dimens.rad_circular_XL2),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: const BorderRadius.only(
            topLeft: Dimens.rad_circular_XL2,
            topRight: Dimens.rad_circular_XL2,
          ),
        ),
        child: child,
      ),
    );
  }
}
