import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_page.dart';
import 'package:hlshop/app/features/user/self.dart';

part 'crud_address_cubit.freezed.dart';
part 'crud_address_state.dart';

class CrudAddressCubit extends Cubit<CrudAddressState> {
  CrudAddressCubit({
    this.initAddress,
    required this.type,
  }) : super(const CrudAddressState()) {
    form = FormGroup({
      UserAddressEntity.fullNameKey: FormControl<String>(
        value: initAddress?.fullName,
        validators: [Validators.required],
      ),
      UserAddressEntity.phoneKey: FormControl<String>(
        value: initAddress?.phone,
        validators: [Validators.required],
      ),
      UserAddressEntity.fullAddressKey: FormControl<String>(
        value: initAddress?.fullAddress,
        validators: [Validators.required],
      ),
      UserAddressEntity.cityKey: FormControl<CityEntity>(
        validators: [Validators.required],
        value: initAddress?.city,
      ),
      UserAddressEntity.districtKey: FormControl<DistrictEntity>(
        validators: [Validators.required],
        value: initAddress?.district,
      ),
      UserAddressEntity.addressTypeKey: FormControl<AddressType>(
        validators: [Validators.required],
        value: initAddress?.addressType ?? AddressType.home,
      ),
    });
  }

  late FormGroup form;
  final CrudAddressType type;
  final UserAddressEntity? initAddress;
  final UserRepo userRepo = getIt<UserRepo>();

  Future<UserAddressEntity?> fetchApi() {
    return Future.value();
  }

  UserAddressEntity getUserAddressFormValue() {
    final city = form.getValue<CityEntity>(UserAddressEntity.cityKey);
    final district =
        form.getValue<DistrictEntity>(UserAddressEntity.districtKey);
    final fullAddress = form.getValue<String>(UserAddressEntity.fullAddressKey);
    final name = form.getValue<String>(UserAddressEntity.fullNameKey);
    final phone = form.getValue<String>(UserAddressEntity.phoneKey);
    final addressType =
        form.getValue<AddressType>(UserAddressEntity.addressTypeKey);

    return UserAddressEntity(
      city: city,
      district: district,
      fullAddress: fullAddress,
      fullName: name,
      phone: phone,
      addressType: addressType,
    );
  }

  Future<void> addAddress() async {
    emit(state.copyWith(status: state.status.toPending()));

    try {
      await userRepo.addAddress(
        address: getUserAddressFormValue(),
      );
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<void> updateAddress() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      await userRepo.updateAddress(
        addressId: initAddress?.id ?? '',
        address: getUserAddressFormValue(),
      );
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  Future<void> deleteAddress() async {
    emit(state.copyWith(status: state.status.toPending()));
    try {
      await userRepo.deleteAddress(
        addressId: initAddress?.id,
      );
      emit(
        state.copyWith(
          status: const ApiStatus.done(),
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: ApiStatus.error(e)));
    }
  }

  bool get isEdit => type == CrudAddressType.edit;
// Future<I?> fetchApi() ;
//
// Future<void> addItem(I item) async {
//   if (addItemFuture == null) {
//     return;
//   }
//   try {
//     loading();
//     final rs = await addItemFuture!(item);
//     reload(rs);
//   } catch (e) {
//     if (e is Error) {
//       log(e.toString(), error: e, stackTrace: e.stackTrace);
//     } else {
//       log(e.toString(), error: e);
//     }
//     emitState(status: ApiStatus.error(e), error: e);
//   }
// }
//
// Future<void> updateItem(I item) async {
//   if (updateItemFuture == null) {
//     return;
//   }
//   try {
//     loading();
//     final rs = await updateItemFuture!(item);
//     loaded(rs);
//   } catch (e) {
//     if (e is Error) {
//       log(e.toString(), error: e, stackTrace: e.stackTrace);
//     } else {
//       log(e.toString(), error: e);
//     }
//     emitState(status: ApiStatus.error(e), error: e);
//   }
// }
//
// Future<void> removeItem(I item) async {
//   if (removeItemFuture == null) {
//     return;
//   }
//   try {
//     loading();
//     final rs = await removeItemFuture!(item);
//     loaded(rs);
//   } catch (e) {
//     if (e is Error) {
//       log(e.toString(), error: e, stackTrace: e.stackTrace);
//     } else {
//       log(e.toString(), error: e);
//     }
//     emitState(status: ApiStatus.error(e), error: e);
//   }
// }
}
