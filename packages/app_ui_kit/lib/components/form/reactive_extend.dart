import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:reactive_forms/reactive_forms.dart';

extension ReactiveFormExtend on ReactiveForm {
  static FormControl<T>? getControl<T>(BuildContext context, String controlName) {
    return ReactiveForm.of(context)?.findControl(controlName) as FormControl<T>?;
  }
}

extension FormGroupExtend on FormGroup {
  FormControl<T>? getControl<T>(String controlName) {
    return controls[controlName] as FormControl<T>?;
  }

  T? getValue<T>(String controlName) {
    return controls[controlName]?.value as T?;
  }
}

extension ReactiveFormContextEx on BuildContext {
  FormControl<T>? getControl<T>(String controlName) {
    return ReactiveForm.of(this)?.findControl(controlName) as FormControl<T>?;
  }

  T? getFormValue<T>(String controlName) {
    return castOrNull<T>(getControl<T>(controlName)?.value);
  }

  AbstractControl<Object>? getForm() {
    return ReactiveForm.of(this);
  }
}
