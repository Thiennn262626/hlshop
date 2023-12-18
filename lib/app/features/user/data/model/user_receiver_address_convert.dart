part of 'user_receiver_address_model_ms.dart';

extension MsUserAddressMapper on ReceiverAddressesMS {
  UserAddressEntity toEntity() {
    return UserAddressEntity(
      object: this,
      fullAddress: addressDetail,
      phone: receiverPhone,
      receiverEmail: UserEmailEntity(
        id: receiverEmailID,
        emailAddress: receiverEmail,
      ),
      addressType: addressLabel,
      fullName: receiverContactName,
      id: receiverAddressID,
      district: DistrictEntity(
        object: this,
        id: districtID,
        name: districtName,
        cityId: cityID,
      ),
      city: CityEntity(
        object: this,
        id: cityID,
        name: cityName,
      ),
      ward: WardEntity(
        object: this,
        id: wardID,
        name: wardName,
        districtId: districtID,
      ),
    );
  }
}
