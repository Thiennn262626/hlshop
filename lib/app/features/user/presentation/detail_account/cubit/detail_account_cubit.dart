import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/data/mulstore/model/update_contact_name_model.dart';
import 'package:hlshop/app/features/user/self.dart';

part 'detail_account_cubit.freezed.dart';

part 'detail_account_state.dart';

class DetailAccountCubit extends Cubit<DetailAccountState> {
  DetailAccountCubit({UserEntity? item})
      : super(
          DetailAccountState(
            userEntity: item,
            name: item?.fullName,
          ),
        );

  final UserRepo userRepo = getIt();

  Future<void> changeName(String? name) async {
    emit(state.copyWith(name: name));
  }
}
