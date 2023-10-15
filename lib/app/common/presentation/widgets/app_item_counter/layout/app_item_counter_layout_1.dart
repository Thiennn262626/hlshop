import 'package:expand_tap_area/expand_tap_area.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/common/presentation/widgets/app_item_counter/app_item_counter_args.dart';

class AppCartItemCounterLayout1 extends StatelessWidget {
  const AppCartItemCounterLayout1({
    super.key,
    required this.callback,
    required this.controller,
  });

  final AppCartItemCounterCallBack callback;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final counterButtonStyle = AppButtonTheme.none(context).copyWith(
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(2))),
      padding: MaterialStateProperty.all(const EdgeInsets.all(4)),
      side: MaterialStateProperty.all(
          BorderSide(color: context.themeColor.greyLighter)),
    );
    const expandPadding = EdgeInsets.all(6);
    return SizedBox(
      height: 44,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _ExpandPressArea(
            onPressed: callback.onRemove,
            tapPadding: expandPadding.copyWith(
              left: expandPadding.left + 4,
              right: 0,
            ),
            child: AppButton(
              style: counterButtonStyle,
              onPressed: callback.onRemove,
              child: const Icon(Icons.remove_rounded),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Container(
              decoration: BoxDecoration(
                color: context.theme.inputDecorationTheme.fillColor,
                border: Border.symmetric(
                  horizontal: BorderSide(color: context.themeColor.greyLighter),
                ),
              ),
              alignment: Alignment.center,
              child: IntrinsicWidth(
                child: AppTextField(
                  controller: controller,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  textAlign: TextAlign.center,
                  decoration: AppTextFieldTheme.none(context).copyWith(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  ),
                  onLostFocus: _onValueChange,
                ),
              ).maxWidth(60).minWidth(40),
            ),
          ),
          _ExpandPressArea(
            onPressed: callback.onAdd,
            tapPadding: expandPadding.copyWith(
              right: expandPadding.right + 4,
              left: 0,
            ),
            child: AppButton(
              style: counterButtonStyle,
              onPressed: callback.onAdd,
              child: const Icon(Icons.add_rounded),
            ),
          ),
        ],
      ),
    );
  }

  void _onValueChange(String value) {
    final parse = int.tryParse(value);
    if (parse != null) {
      callback.onValueChange?.call(parse);
    }
  }
}

class _ExpandPressArea extends StatelessWidget {
  const _ExpandPressArea({
    super.key,
    required this.child,
    this.onPressed,
    required this.tapPadding,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsets tapPadding;

  @override
  Widget build(BuildContext context) {
    return ExpandTapWidget(
      onTap: onPressed ?? () {},
      tapPadding: tapPadding,
      child: Padding(
        padding: tapPadding,
        child: child,
      ),
    );
  }
}
