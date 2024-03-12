import 'package:app_ui_kit/all_file/app_ui_kit_all_file.dart';
import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/presentation/address/crud_address/crud_address_page.dart';

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
      UserAddressEntity.emailKey: FormControl<UserEmailEntity>(
        validators: [Validators.required],
        value: initAddress?.receiverEmail,
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
      UserAddressEntity.wardKey: FormControl<WardEntity>(
        validators: [Validators.required],
        value: initAddress?.ward,
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
    final ward = form.getValue<WardEntity>(UserAddressEntity.wardKey);
    final fullAddress = form.getValue<String>(UserAddressEntity.fullAddressKey);
    final name = form.getValue<String>(UserAddressEntity.fullNameKey);
    final phone = form.getValue<String>(UserAddressEntity.phoneKey);
    final email = form.getValue<UserEmailEntity>(UserAddressEntity.emailKey);
    final addressType =
        form.getValue<AddressType>(UserAddressEntity.addressTypeKey);

    return UserAddressEntity(
      city: city,
      district: district,
      ward: ward,
      fullAddress: fullAddress,
      fullName: name,
      phone: phone,
      receiverEmail: email,
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

  void changeCity() {
    final city = form.getValue<CityEntity>(UserAddressEntity.cityKey);
    final district =
        form.getValue<DistrictEntity>(UserAddressEntity.districtKey);
    if (city?.id != district?.cityId) {
      form.control(UserAddressEntity.districtKey).value = null;
      form.control(UserAddressEntity.wardKey).value = null;
    } else {}
  }

  void changeDistrict() {
    final district =
        form.getValue<DistrictEntity>(UserAddressEntity.districtKey);
    final ward = form.getValue<WardEntity>(UserAddressEntity.wardKey);
    if (district?.id != ward?.districtId) {
      form.control(UserAddressEntity.wardKey).value = null;
    } else {}
  }
}
