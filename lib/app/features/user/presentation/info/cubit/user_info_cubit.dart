import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';
import 'package:hlshop/core/utils/image_utils.dart';

part 'user_info_cubit.freezed.dart';
part 'user_info_state.dart';

class UserInfoCubit extends Cubit<UserInfoState> {
  UserInfoCubit({UserEntity? item}) : super(UserInfoState());

  final UserRepo userRepo = getIt();
}
