part of 'user_receiver_address_model_ms.dart';

extension MsUserAddressMapper on ReceiverAddressesMS {
  UserAddressEntity toEntity() {
    return UserAddressEntity(
      object: this,
      fullAddress: addressString,
      phone: receiverPhone,
      addressType: AddressType.home,
      fullName: receiverContactName,
      id: receiverAddressID,
      district: DistrictEntity(
        object: this,
        id: districtID,
        // Thíu feild name cho district
      ),
      city: CityEntity(
        object: this,
        id: cityID,
        // Thíu feild name cho city
      ),
    );
  }
}
