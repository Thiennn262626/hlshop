import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';


part 'forgot_password_state.dart';

class ForgotPasswordCubit extends RequestCubit<ForgotPasswordState> {
  ForgotPasswordCubit({
    dynamic? item,
    required Map<String, AbstractControl<dynamic>> controls,
  }) : super(ForgotPasswordState(item: item)) {
    form = FormGroup({...controls});
    _authRepo = getIt<AuthRepo>();
  }

  late final FormGroup form;
  late final AuthRepo _authRepo;

  String? _userID;
  String? _uuid;
  CheckIdResultData? _idRs;
  ForgotPasswordConfirmOTPEntity? _confirmResult;

  FutureOr<void> changePasswordOTP() async {
    emit(state.copyWith(status: ItemStatus.loading));
    try {
      final id = form.getValue<String>(AuthIdInput.idKey) ?? '';
      if (id.isEmpty) {
        throw Exception('Không nhập đủ thông tin');
      }

      ForgotPasswordOTPEntity rs;

      final idRs = await CheckIdHelper.checkId(id);
      if (idRs.isPhone) {
        rs = await _authRepo.forgotPasswordSentOTPPhone(
          phone: idRs.phone!,
          countryCode: idRs.countryCode ?? '',
        );
      } else if (idRs.isEmail) {
        rs = await _authRepo.forgotPasswordSentOTPEmail(
          email: idRs.email!,
        );
      } else {
        throw Exception('Không nhập đủ thông tin');
      }

      _uuid = rs.uuid;
      _userID = rs.userID;
      _idRs = idRs;

      final verifiedOTP = await _verifyOTP();
      if (verifiedOTP) {
        await _changePassword();
      } else {
        emit(
          state.copyWith(
            status: ItemStatus.error,
            error: 'Đổi mật khẩu không thành công',
          ),
        );
      }
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ItemStatus.error,
          error: e,
        ),
      );
    }
  }

  Future<bool> _verifyOTP() async {
    final verifyRs = await getIt<AppAutoRoute>().push(
      AuthOtpConfirmRoute(
        otpMessage: _idRs?.getOTPMessage(),
        confirmOTPFunc: (otpUserInput) {
          return _confirmOTP(
            otpUserInput: otpUserInput,
          );
        },
        onResendOTP: _resendOTP,
      ),
    );
    return verifyRs == true;
  }

  Future<Object?> _resendOTP() async {
    ForgotPasswordOTPEntity? resendRs;
    if (_idRs?.isPhone ?? false) {
      resendRs = await _authRepo.forgotPasswordSentOTPPhone(
        phone: _idRs?.phone ?? '',
        countryCode: _idRs?.countryCode ?? '',
      );
    } else if (_idRs?.isEmail ?? false) {
      resendRs = await _authRepo.forgotPasswordSentOTPEmail(
        email: _idRs?.email ?? '',
      );
    }

    _uuid = resendRs?.uuid;
    _userID = resendRs?.userID;
    return Future.value(resendRs);
  }

  Future<bool> _confirmOTP({
    required String otpUserInput,
  }) async {
    final rs = await _authRepo.forgotPasswordConfirmOTP(
      otp: otpUserInput,
      uuid: _uuid ?? '',
      userID: _userID ?? '',
    );
    _confirmResult = rs;
    return true;
  }

  Future<bool> _changePassword() async {
    final rs = await getIt<AppAutoRoute>().push(
      ChangePasswordRoute(
        userID: _userID ?? '',
        uuid: _confirmResult?.uuid ?? '',
      ),
    );
    return rs == true;
  }
}
