import 'package:hlshop/all_file/all_file.dart';

part 'receive_address_cubit.freezed.dart';
part 'receive_address_state.dart';

class ReceiveAddressCubit extends Cubit<ReceiveAddressState> {
  ReceiveAddressCubit({required this.user})
      : super(const ReceiveAddressState());

  final UserEntity user;
  final UserRepo userRepo = getIt();
  final AppPagingController<int, UserAddressEntity> pagingController =
      AppPagingController(firstPageKey: 0);

  FutureOr<void> loadData() async {
    pagingController.refresh();
  }

  FutureOr<void> addDefault(String id) async {
    try {
      emit(state.copyWith(status: const ApiStatus.loading()));
      await userRepo.addDefaultShippingAddress(addressId: id);
      emit(state.copyWith(status: const ApiStatus.done()));
    } catch (e) {
      log(e.toString());
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }
}
