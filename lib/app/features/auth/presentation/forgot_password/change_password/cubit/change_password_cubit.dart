import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';


part 'change_password_state.dart';

class ChangePasswordCubit extends RequestCubit<ChangePasswordState> {
  ChangePasswordCubit({
    required this.userID,
    required this.uuid,
    dynamic? item,
  }) : super(ChangePasswordState(item: item)) {
    _authRepo = getIt<AuthRepo>();
    form = FormGroup(
      {
        ...AuthPasswordInput.createControl(
          key: passwordKey,
        ),
        ...AuthPasswordInput.createControl(
          key: confirmKey,
        ),
      },
    );
  }

  static const String passwordKey = 'passwordKey';
  static const String confirmKey = 'confirmKey';

  late final FormGroup form;
  late final AuthRepo _authRepo;
  final String userID;
  final String uuid;

  FutureOr<void> submit() async {
    emit(state.copyWith(status: ItemStatus.loading));
    try {
      final rs = await _authRepo.forgotPasswordCreatePassword(
        userID: userID,
        uuid: uuid,
        password: form.getValue<String>(passwordKey) ?? '',
      );
      emit(
        state.copyWith(
          status: ItemStatus.success,
          item: rs,
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
