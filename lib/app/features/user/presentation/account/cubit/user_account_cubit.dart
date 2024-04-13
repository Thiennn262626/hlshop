import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/domain/entity/user_base_entity.dart';

part 'user_account_cubit.freezed.dart';
part 'user_account_state.dart';

class UserAccountCubit extends Cubit<UserAccountState> {
  UserAccountCubit() : super(const UserAccountState());

  final UserRepo userRepo = getIt();
}
