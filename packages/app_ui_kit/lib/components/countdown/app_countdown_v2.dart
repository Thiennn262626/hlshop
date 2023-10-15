import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:flutter_countdown_timer/index.dart';

class AppCountDownV2 extends StatefulWidget {
  const AppCountDownV2({
    super.key,
    this.endTime,
    required this.childBuilder,
    this.onEnd,
    this.hideOnFinish = true,
    this.onEndWhenStart,
    this.endWidget,
    this.controller,
  });

  final String? endTime;
  final CountdownTimerController? controller;

  final VoidCallback? onEnd;
  final VoidCallback? onEndWhenStart;

  final Widget? endWidget;
  final Widget Function(
    BuildContext context,
    CurrentRemainingTime? time,
    String? totalHour,
    String? min,
    String? sec,
  ) childBuilder;

  final bool hideOnFinish;

  @override
  State<AppCountDownV2> createState() => _AppCountDownStateV2();
}

class _AppCountDownStateV2 extends State<AppCountDownV2> with AutomaticKeepAliveClientMixin {
  String? timeDisplay(num? time) => time?.toTwoDigit;

  CountdownTimerController? _controller;

  @override
  void initState() {
    initController();
    super.initState();
  }

  void initController() {
    if (widget.controller != null) {
      _controller = widget.controller;
    } else {
      _controller?.disposeTimer();
      final endTime = widget.endTime.getTimeEpoc();

      if (endTime != null && endTime <= TimeService().today().millisecondsSinceEpoch) {
        widget.onEndWhenStart?.call();
      } else if (endTime != null) {
        _controller = CountdownTimerController(
          endTime: endTime,
          onEnd: () {
            if (endTime == TimeService().today().millisecondsSinceEpoch) {
              widget.onEndWhenStart?.call();
            } else {
              widget.onEnd?.call();
            }
          },
        );
      }
      _controller?.start();
    }
  }

  @override
  void didUpdateWidget(covariant AppCountDownV2 oldWidget) {
    if (oldWidget.endTime != widget.endTime) {
      initController();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller?.disposeTimer();
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (_controller == null) return const SizedBox.shrink();

    return CountdownTimer(
      controller: _controller,
      widgetBuilder: (context, remainTime) {
        if (remainTime == null) {
          if (widget.endWidget != null) {
            return widget.endWidget ?? const SizedBox.shrink();
          }
          if (widget.hideOnFinish) {
            return const SizedBox.shrink();
          }
        }
        final totalHours = _getTotalHours(remainTime);
        final hourStr = timeDisplay(totalHours);
        final minStr = timeDisplay(remainTime?.min);
        final secStr = timeDisplay(remainTime?.sec);

        return widget.childBuilder(
          context,
          remainTime,
          hourStr,
          minStr,
          secStr,
        );
      },
    );
  }

  num? _getTotalHours(CurrentRemainingTime? remainTime) {
    final days = remainTime?.days ?? 0;
    final hours = remainTime?.hours ?? 0;
    final daysToHours = days == null ? 0 : (days * 24);

    return days.toNumWithZero == 0 && hours.toNumWithZero == 0 ? null : daysToHours + hours;
  }

  @override
  bool get wantKeepAlive => true;
}
