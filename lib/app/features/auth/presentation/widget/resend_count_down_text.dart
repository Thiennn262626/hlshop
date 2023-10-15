import 'package:flutter_countdown_timer/index.dart';
import 'package:hlshop/all_file/all_file.dart';

class ResendCountdownText extends StatefulWidget {
  const ResendCountdownText({
    super.key,
    this.countdownTime = const Duration(seconds: 30),
    required this.onResend,
  });

  final Duration countdownTime;
  final VoidCallback onResend;

  @override
  State<ResendCountdownText> createState() => _ResendCountdownTextState();
}

class _ResendCountdownTextState extends State<ResendCountdownText> {
  CountdownTimerController? _controller;

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  void _startTimer() {
    _controller?.disposeTimer();
    final endTime =
        TimeService().getTimeFormNow(duration: widget.countdownTime);

    if (endTime != null) {
      _controller = CountdownTimerController(
        endTime: endTime,
        onEnd: () {},
      );
    }
    _controller?.start();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = context.themeText.bodySmall.copyWith(
      color: context.theme.hintColor,
    );
    return AppCountDownV2(
      controller: _controller,
      endWidget: Text.rich(
        TextSpan(
          text: LocaleKeys.authen_NotReceiveOTP.tr(),
          style: textStyle,
          children: [
            TextSpan(
              text: ' ${LocaleKeys.authen_SendAgain.tr()}',
              style: textStyle.copyWith(
                fontWeight: FontWeight.w500,
                color: context.theme.primaryColor,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _controller?.endTime = TimeService()
                          .getTimeFormNow(duration: widget.countdownTime) ??
                      0;
                  _controller?.start();
                  widget.onResend();
                },
            )
          ],
        ),
        textAlign: TextAlign.center,
      ),
      childBuilder: (_, time, hour, min, sec) {
        return LocaleKeys.authen_SendOTPAgainAfterSecond
            .tr(
              args: [
                Duration(
                  hours: hour.toNumWithZero.toInt(),
                  minutes: min.toNumWithZero.toInt(),
                  seconds: sec.toNumWithZero.toInt(),
                ).inSeconds.toString(),
              ],
            )
            .text
            .textStyle(textStyle)
            .make();
      },
    ).p12();
  }
}
