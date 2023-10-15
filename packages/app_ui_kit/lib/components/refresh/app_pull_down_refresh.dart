import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AppPullDownRefresh extends StatefulWidget {
  const AppPullDownRefresh({
    super.key,
    required this.child,
    required this.refresh,
    this.enable = true,
    this.indicatorAlignment = Alignment.topCenter,
  });

  final Widget child;
  final void Function() refresh;
  final bool enable;
  final AlignmentGeometry indicatorAlignment;

  @override
  State<AppPullDownRefresh> createState() => _AppPullDownRefreshState();
}

class _AppPullDownRefreshState extends State<AppPullDownRefresh> {
  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    if (!widget.enable) {
      return widget.child;
    }

    return CustomRefreshIndicator(
      offsetToArmed: 80,
      builder: (
        BuildContext context,
        Widget child,
        IndicatorController controller,
      ) {
        return Stack(
          children: <Widget>[
            Align(
              alignment: widget.indicatorAlignment,
              child: AnimatedBuilder(
                animation: controller,
                builder: (BuildContext context, _) {
                  return !controller.isIdle ? const CupertinoActivityIndicator() : const SizedBox.shrink();
                },
              ),
            ).pDefault(),
            child,
          ],
        );
      },
      onRefresh: () => Future.sync(
        () {
          if (mounted) {
            Future.delayed(const Duration(seconds: 1)).then((value) {
              if (mounted) {
                _refreshController.refreshCompleted();
              }
            });

            widget.refresh.call();
          }
        },
      ),
      child: widget.child,
    );
  }
}
