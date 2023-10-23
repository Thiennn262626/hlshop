part of 'add_receiver_address_model.dart';

extension MsAddressTypeMapper on MsAddressType {
  AddressType toEntity() {
    switch (this) {
      case MsAddressType.home:
        return AddressType.home;
      case MsAddressType.office:
        return AddressType.office;
      case MsAddressType.other:
        return AddressType.other;
      default:
        return AddressType.other;
    }
  }
}

extension MsAddressTypeMapper2 on AddressType {
  MsAddressType toModel() {
    switch (this) {
      case AddressType.home:
        return MsAddressType.home;
      case AddressType.office:
        return MsAddressType.office;
      case AddressType.other:
        return MsAddressType.other;
      default:
        return MsAddressType.other;
    }
  }
}