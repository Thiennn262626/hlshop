import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:app_ui_kit/components/button/actions/btn_more_text.dart';
import 'package:app_ui_kit/components/container/blend_bottom.dart';
import 'cubit/show_more_cubit.dart';

class ShowMoreLayoutBlend extends StatelessWidget {
  const ShowMoreLayoutBlend({
    super.key,
    required this.moreLayout,
    required this.lessLayout,
    this.initialValue = false,
    required this.moreBtnBuilder,
  });

  final Widget moreLayout;
  final Widget lessLayout;
  final Widget Function(bool isMore, VoidCallback onPressed) moreBtnBuilder;
  final bool initialValue;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => context.read<ShowMoreCubit?>() ?? ShowMoreCubit(initialValue: initialValue),
      child: Builder(
        builder: (context) {
          return BlocBuilder<ShowMoreCubit, bool>(
            builder: (context, isShowMore) {
              final _Layout child;
              if (isShowMore) {
                child = _Layout(
                  key: const ObjectKey(true),
                  isMore: true,
                  moreBtnBuilder: moreBtnBuilder,
                  onPressed: () => context.read<ShowMoreCubit>().toggle(),
                  child: moreLayout,
                );
              } else {
                child = _Layout(
                  key: const ObjectKey(false),
                  isMore: false,
                  moreBtnBuilder: moreBtnBuilder,
                  onPressed: () => context.read<ShowMoreCubit>().toggle(),
                  child: lessLayout,
                );
              }
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                layoutBuilder: (currentChild, previousChildren) {
                  return Stack(
                    children: <Widget>[
                      ...previousChildren,
                      if (currentChild != null) currentChild,
                    ],
                  );
                },
                child: child,
              );
            },
          );
        },
      ),
    );
  }
}

class _Layout extends StatelessWidget {
  const _Layout({
    super.key,
    required this.child,
    required this.onPressed,
    required this.isMore,
    required this.moreBtnBuilder,
  });

  final bool isMore;
  final Widget child;
  final VoidCallback onPressed;
  final Widget Function(bool isMore, VoidCallback onPressed) moreBtnBuilder;

  @override
  Widget build(BuildContext context) {
    if (isMore) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          child,
          moreBtnBuilder(isMore, onPressed),
        ],
      );
    }
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlendBottomWhite(
              child: child,
            ),
          ],
        ),
        Builder(
          builder: (context) {
            return moreBtnBuilder(isMore, onPressed);
          },
        )
      ],
    );
  }
}
