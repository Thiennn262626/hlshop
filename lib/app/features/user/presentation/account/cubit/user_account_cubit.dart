import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';
import 'package:hlshop/app/features/user/domain/repo/user_repo.dart';

part 'user_account_cubit.freezed.dart';
part 'user_account_state.dart';

class UserAccountCubit extends Cubit<UserAccountState> {
  UserAccountCubit({UserEntity? item}) : super(UserAccountState(item: item));

  final UserRepo userRepo = getIt();

  FutureOr<void> fetchItem() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      final item = await userRepo.getUserInfo();
      emit(state.copyWith(
        status: const ApiStatus.done(),
        item: item,
      ));
    } catch (e) {
      log(e.toString(), error: e);
      emit(
        state.copyWith(
          status: ApiStatus.error(e),
        ),
      );
    }
  }
}
