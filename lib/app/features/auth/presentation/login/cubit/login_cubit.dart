import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/core/utils/check_id_helper.dart';
import 'package:hlshop/app/features/auth/domain/entity/auth_entity.dart';
import 'package:hlshop/app/features/auth/domain/repo/auth_repo.dart';
import 'package:hlshop/app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:hlshop/app/features/auth/presentation/widget/auth_id_input.dart';

part 'login_state.dart';

class LoginCubit extends RequestCubit<LoginState> {
  LoginCubit({
    required Map<String, AbstractControl<dynamic>> idInputControl,
    required this.authBloc,
    dynamic? item,
  }) : super(LoginState(item: item)) {
    form = FormGroup({
      ...idInputControl,
    });
    authRepo = getIt<AuthRepo>();
  }

  late final FormGroup form;
  late final AuthRepo authRepo;
  final AuthBloc authBloc;

  FutureOr<void> loginPassword() async {
    emit(state.copyWith(status: ItemStatus.loading));
    try {
      final userName = form.getValue<String>(AuthIdInput.idKey) ?? '';
      final password = form.getValue<String>(AuthPasswordInput.passwordKey) ?? '';

      if (userName.isEmpty || password.isEmpty) {
        throw Exception('Không nhập đủ thông tin'.tr());
      }

      final idRs = await CheckIdHelper.checkId(userName);
      AuthConfirmEntity? rs;
      if (idRs.isPhone) {
        rs = await authRepo.loginWithPhonePassword(
          phone: idRs.phone!,
          countryCode: idRs.countryCode ?? '',
          password: password,
        );
      } else if (idRs.isEmail) {
        rs = await authRepo.loginWithEmailPassword(
          email: idRs.email!,
          password: password,
        );
      }

      if (rs == null) {
        throw Exception('Đăng nhập thất bại'.tr());
      }

      authBloc.add(
        AuthEvent.authenticated(
          token: rs.token ?? '',
        ),
      );
      emit(
        state.copyWith(
          status: ItemStatus.success,
          // item: item,
        ),
      );
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
}
