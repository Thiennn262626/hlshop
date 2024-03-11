import 'package:hlshop/all_file/all_file.dart';

class AuthIdPasswordInput extends StatelessWidget {
  const AuthIdPasswordInput({
    super.key,
    this.showPasswordHelper = true,
    this.showConfirmPassword = false,
  });

  final bool showPasswordHelper;
  final bool showConfirmPassword;

  static Map<String, AbstractControl<dynamic>> createControlGroup({
    bool hasConfirmPassword = false,
  }) {
    return {
      ...AuthIdInput.createControl(),
      ...AuthPasswordInput.createControl(
        hasConfirm: hasConfirmPassword,
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const AuthIdInput(),
        if (showConfirmPassword)
          const AuthPasswordInputWithConfirm(
            passwordKey: AuthPasswordInput.passwordKey,
            confirmKey: AuthPasswordInput.passwordConfirmKey,
          )
        else
          AuthPasswordInput(
            showPasswordHelper: showPasswordHelper,
          ),
      ].withDivider(Gaps.vGap16),
    );
  }
}

class AuthIdInput extends StatelessWidget {
  const AuthIdInput({super.key});

  static const String idKey = 'idKey';

  static Map<String, AbstractControl<dynamic>> createControl() {
    return {
      idKey: FormControl<String>(
        validators: [
          Validators.required,
          Validators.composeOR(
            [
              Validators.email,
              Validators.pattern(
                AppRegex.phoneNumberVnRegex,
              ),
            ],
          ),
        ],
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFieldReactive(
      formControlName: idKey,
      enableClearButton: true,
      decoration: AppTextFieldTheme.greyStyle(context),
      hintText: 'Nhập email hoặc số điện thoại'.tr(),
      validationMessages: {
        ValidationMessage.required: (e) =>
            LocaleKeys.authen_PhoneOrEmailRequired.tr(),
        ValidationMessage.email: (e) =>
            LocaleKeys.authen_EmailOrPhoneNotValid.tr(),
        ValidationMessage.pattern: (e) =>
            LocaleKeys.authen_EmailOrPhoneNotValid.tr(),
      },
    );
  }
}

class AuthPasswordInput extends StatelessWidget {
  const AuthPasswordInput({
    super.key,
    this.showPasswordHelper = true,
    this.formControlName,
    this.hintText,
  });

  final bool showPasswordHelper;
  final String? formControlName;
  final String? hintText;

  static const String passwordKey = 'passwordKey';
  static const String passwordConfirmKey = 'passwordConfirmKey';
  static const String mustMatchKey = 'mustMatchKey';

  static Map<String, AbstractControl<dynamic>> createControl({
    String? key,
    String? confirmKey,
    bool hasConfirm = false,
  }) {
    return {
      key ?? passwordKey: FormControl<String>(
        validators: [
          Validators.required,
          Validators.pattern(
            AppRegex.passwordRegex,
          ),
        ],
      ),
      if (hasConfirm)
        confirmKey ?? passwordConfirmKey: FormControl<String>(
          validators: [
            Validators.required,
            Validators.pattern(
              AppRegex.passwordRegex,
            ),
          ],
        ),
    };
  }

  static ValidatorFunction mustMatch(
      {String controlName = passwordKey,
      String matchingControlName = passwordConfirmKey}) {
    return (AbstractControl<dynamic> control) {
      final form = control as FormGroup;

      final formControl = form.control(controlName);
      final matchingFormControl = form.control(matchingControlName);

      final matchingValue = matchingFormControl.value;
      if (matchingValue is String &&
          matchingValue != '' &&
          formControl.value != matchingValue) {
        matchingFormControl
          ..setErrors({mustMatchKey: true})
          ..markAsTouched();
      } else {
        matchingFormControl.removeError(mustMatchKey);
      }

      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    if (!showPasswordHelper) {
      return _buildPasswordInput(context, null);
    } else {
      return FocusBuilder(
        builder: _buildPasswordInput,
      );
    }
  }

  TextFieldPasswordEyeBuilder _buildPasswordInput(
      BuildContext context, bool? hasFocus) {
    return TextFieldPasswordEyeBuilder(
      inputDecoration: AppTextFieldTheme.greyStyle(context),
      builder: (context, inputDecoration, isTextVisible) =>
          AppTextFieldReactive(
        formControlName: formControlName ?? passwordKey,
        obscureText: !isTextVisible,
        decoration: inputDecoration.copyWith(
          hintText: hintText ?? LocaleKeys.authen_Password.tr(),
          helperText: ((hasFocus ?? false) && showPasswordHelper)
              ? LocaleKeys.authen_PasswordPatternMsg.tr()
              : null,
        ),
        validationMessages: {
          ValidationMessage.required: (e) =>
              LocaleKeys.authen_PasswordPatternMsg.tr(),
          ValidationMessage.pattern: (e) =>
              LocaleKeys.authen_PasswordPatternMsg.tr(),
          mustMatchKey: (e) => LocaleKeys.authen_PasswordNotMatch.tr(),
        },
      ),
    );
  }
}

class AuthPasswordInputWithConfirm extends StatelessWidget {
  const AuthPasswordInputWithConfirm({
    required this.passwordKey,
    required this.confirmKey,
    super.key,
  });

  final String passwordKey;
  final String confirmKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AuthPasswordInput(
          formControlName: passwordKey,
          hintText: LocaleKeys.authen_InputNewPassword.tr(),
        ),
        Gaps.vGap16,
        AuthPasswordInput(
          formControlName: confirmKey,
          hintText: LocaleKeys.authen_ConfirmPassword.tr(),
          showPasswordHelper: false,
        ),
      ],
    );
  }
}
