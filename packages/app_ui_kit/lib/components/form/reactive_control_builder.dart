import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveControlBuilder<T> extends StatelessWidget {
  const ReactiveControlBuilder({
    super.key,
    required this.controlName,
    this.child,
    required this.builder,
  });

  final String controlName;
  final Widget? child;
  final Widget Function(Widget child, FormControl<T> control, T? value) builder;

  @override
  Widget build(BuildContext context) {
    return ReactiveStatusListenableBuilder(
      formControlName: controlName, 
      child: child,
      builder: (context, control, child) {
        final value = control.value as T?;
        return builder(child ?? const SizedBox.shrink(), control as FormControl<T>, value);
      },  
    );
  }
}
