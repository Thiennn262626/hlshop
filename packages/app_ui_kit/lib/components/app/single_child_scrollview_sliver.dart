import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';

class AppScrollBody extends StatelessWidget {
  const AppScrollBody({
    super.key,
    required this.child,
    this.hasScrollBody,
    this.topSpacing,
    this.bottomSpacing,
  });

  const AppScrollBody.withSpacing({
    super.key,
    required this.child,
    this.hasScrollBody,
    this.topSpacing = true,
    this.bottomSpacing = true,
  });

  const AppScrollBody.withBottomSpacing({
    super.key,
    required this.child,
    this.hasScrollBody,
    this.topSpacing = false,
    this.bottomSpacing = true,
  });

  final Widget child;
  final bool? hasScrollBody;
  final bool? topSpacing;
  final bool? bottomSpacing;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              if (topSpacing ?? false) Gaps.vGap16,
              child,
              if (bottomSpacing ?? false) Gaps.bottomSpacing(context),
            ],
          ),
        ),
      ],
    );
  }
}
