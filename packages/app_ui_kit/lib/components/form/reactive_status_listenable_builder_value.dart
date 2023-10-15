import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveStatusListenableBuilderValue<T> extends StatelessWidget {
  const ReactiveStatusListenableBuilderValue({super.key, required this.formControlName, required this.builder});

  final String formControlName;
  final Widget Function(BuildContext context, AbstractControl<T> control, T? value, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    return ReactiveStatusListenableBuilder(
      formControlName: formControlName,
      builder: (context, control, child) {
        final value = control.value as T?;
        return builder(context, control as AbstractControl<T>, value, child);
      },
    );
  }
}
