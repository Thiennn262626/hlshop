import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/core/utils/check_id_helper.dart';
import 'package:hlshop/app/features/auth/self.dart';

part 'sign_up_state.dart';

class SignUpCubit extends RequestCubit<SignUpState> {
  SignUpCubit({required this.authBloc, dynamic? item})
      : super(SignUpState(item: item)) {
    form = FormGroup({
      ...AuthIdPasswordInput.createControlGroup(
        hasConfirmPassword: true,
      ),
    }, validators: [
      AuthPasswordInput.mustMatch(),
    ]);
  }

  final AuthBloc authBloc;
  late FormGroup form;
  final _authRepo = getIt<AuthRepo>();

  String? _userID;
  String? _uuid;
  CheckIdResultData? _idRs;

  FutureOr<void> signUpOTP() async {
    if (form.valid) {
      emit(state.copyWith(status: ItemStatus.loading));
      try {
        final id = form.getValue<String>(AuthIdInput.idKey) ?? '';
        final password =
            form.getValue<String>(AuthPasswordInput.passwordKey) ?? '';
        if (id.isEmpty || password.isEmpty) {
          throw Exception('Chưa nhập đủ thông tin');
        }

        bool loginResult = false;
        print('id2011063: $id');
        final idRs = await CheckIdHelper.checkId(id);
        _idRs = idRs;
        print('idRs20110630: ${idRs.isPhone}');
        print('idRs20110631: ${idRs.isEmail}');
        if (idRs.isPhone) {
          print('idRs201106302: ${idRs.isPhone}');
          loginResult = await _signUpPhone(
            phone: idRs.phone ?? '',
            countryCode: idRs.countryCode ?? '',
            password: password,
          );
        } else if (idRs.isEmail) {
          print('idRs201106312: ${idRs.isEmail}');
          loginResult = await _signUpEmail(
            email: idRs.email ?? '',
            password: password,
          );
        }

        if (loginResult) {
          emit(state.copyWith(status: ItemStatus.success));
        } else {
          emit(state.copyWith(status: ItemStatus.initial));
        }
      } catch (e) {
        log(e.toString(), error: e, stackTrace: StackTrace.current);
        emit(state.copyWith(status: ItemStatus.error, error: e));
      }
    }
  }

  Future<bool> _signUpPhone({
    required String phone,
    required String countryCode,
    required String password,
  }) async {
    print('phone2011063: $phone');
    final signUpOTPRs = await _authRepo.signUpPhone(
      phone: phone,
      countryCode: countryCode,
      password: password,
    );
    _uuid = signUpOTPRs.uuid;
    _userID = signUpOTPRs.userID;

    return _verifyOTP(signUpOTPRs);
  }

  Future<bool> _signUpEmail({
    required String email,
    required String password,
  }) async {
    print('email2011063: $email');
    final signUpOTPRs = await _authRepo.signUpEmail(
      email: email,
      password: password,
    );
    _uuid = signUpOTPRs.uuid;
    _userID = signUpOTPRs.userID;

    return _verifyOTP(signUpOTPRs);
  }

  Future<bool> _verifyOTP(AuthSignUpOTPEntity signUpOTPRs) async {
    final verifyRs = await getIt<AppAutoRoute>().push(
      AuthOtpConfirmRoute(
        successMessage: LocaleKeys.authen_SignUpSuccess.tr(),
        otpMessage: _idRs?.getOTPMessage(),
        confirmOTPFunc: (otpUserInput) {
          return _confirmOTP(
            otpUserInput: otpUserInput,
            authSignUpOTPEntity: signUpOTPRs,
          );
        },
        onResendOTP: () {
          return _resendOTP(
            signUpOTPRs,
          );
        },
      ),
    );
    return verifyRs == true;
  }

  Future<Object?> _resendOTP(AuthSignUpOTPEntity signUpOTPRs) async {
    AuthSignUpOTPEntity? resendRs;
    if (_idRs?.isPhone ?? false) {
      resendRs = await _authRepo.resendSignUpOTPPhone(
        userID: signUpOTPRs.userID ?? '',
        idData: _idRs,
      );
    }
    if (_idRs?.isEmail ?? false) {
      resendRs = await _authRepo.resendSignUpOTPEmail(
        userID: signUpOTPRs.userID ?? '',
        idData: _idRs,
      );
    }
    _uuid = resendRs?.uuid;
    _userID = resendRs?.userID;
    return Future.value(resendRs);
  }

  Future<bool> _confirmOTP({
    required String otpUserInput,
    required AuthSignUpOTPEntity authSignUpOTPEntity,
  }) async {
    final rs = await _authRepo.confirmSignUpOTP(
      otp: otpUserInput,
      uuid: _uuid ?? '',
      userID: _userID ?? '',
      requestData: authSignUpOTPEntity,
    );
    if (rs.token.isNotNullOrEmpty) {
      authBloc.add(
        AuthEvent.authenticated(
          token: rs.token!,
        ),
      );
    }
    return true;
  }

  Future<void> reActiveAccount({
    required String userID,
    String? id,
  }) async {
    try {
      if (id?.isEmpty ?? true) {
        throw Exception('Chưa nhập đủ thông tin');
      }
      AuthSignUpOTPEntity? signUpOTPRs;

      final idRs = await CheckIdHelper.checkId(id ?? '');
      if (idRs.isPhone) {
        signUpOTPRs = await _authRepo.resendSignUpOTPPhone(
          userID: userID,
          idData: idRs,
        );
      } else if (idRs.isEmail) {
        signUpOTPRs = await _authRepo.resendSignUpOTPEmail(
          userID: userID,
          idData: idRs,
        );
      }
      if (signUpOTPRs == null) {
        throw Exception('Không thể gửi mã OTP');
      }

      _uuid = signUpOTPRs.uuid;
      _userID = userID;
      _idRs = idRs;
      await _verifyOTP(signUpOTPRs);
    } catch (e) {
      log(e.toString(), error: e, stackTrace: StackTrace.current);
      emit(state.copyWith(status: ItemStatus.error, error: e));
    }
  }
}
