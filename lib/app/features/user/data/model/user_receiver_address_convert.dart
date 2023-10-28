part of 'user_receiver_address_model_ms.dart';

extension MsUserAddressMapper on ReceiverAddressesMS {
  UserAddressEntity toEntity() {
    return UserAddressEntity(
      object: this,
      fullAddress: addressDetail,
      phone: receiverPhone,
      addressType: addressLabel,
      fullName: receiverContactName,
      id: receiverAddressID,
      district: DistrictEntity(
        object: this,
        id: districtID,
        name: districtName,
      ),
      city: CityEntity(
        object: this,
        id: cityID,
        name: cityName,
      ),
    );
  }
}
