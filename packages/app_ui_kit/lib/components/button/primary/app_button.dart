import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.child,
    this.label,
    this.onPressed,
    this.style,
    this.isSubmitButton = false,
    this.isEnable = true,
  });

  final Widget? child;
  final String? label;
  final VoidCallback? onPressed;

  final ButtonStyle? style;

  final bool isSubmitButton;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    var isDisabled = onPressed == null;

    if (isSubmitButton) {
      final form = ReactiveForm.of(context);
      isDisabled = form?.valid ?? false ? false : true;
    }

    if (!isEnable) {
      isDisabled = true;
    }

    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: style ?? AppButtonTheme.primary(context),
      child: child ?? label?.text.make(),
    );
  }
}
