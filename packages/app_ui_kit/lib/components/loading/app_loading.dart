import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/loading/app_loading_indicator.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({
    super.key,
    required this.child,
    this.isLoading = false,
    this.canInteractOnLoading = false,
  });

  final Widget child;
  final bool isLoading;
  final bool canInteractOnLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          ignoring: isLoading && !canInteractOnLoading,
          child: child,
        ),
        if (isLoading)
          const Positioned.fill(
            child: AppLoadingIndicator(),
          ),
      ],
    );
  }
}
