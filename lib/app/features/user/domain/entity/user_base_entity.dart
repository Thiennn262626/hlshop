import 'package:hlshop/all_file/all_file.dart';

part 'user_base_entity.g.dart';

@JsonSerializable()
class UserEntity {
  const UserEntity({
    this.object,
    this.id,
    this.userName,
    this.fullName,
    this.avatar,
    this.receiveAddressList,
    this.phoneList,
    this.emailList,
    this.addressList,
    this.userCover,
  });

  final Object? object;
  final String? id;
  final String? userName;
  final String? fullName;
  final String? avatar;
  final List<UserPhoneEntity>? phoneList;
  final List<UserEmailEntity>? emailList;
  final List<UserAddressEntity>? addressList;
  final String? userCover;
  final List<UserAddressEntity>? receiveAddressList;

  static UserEntity demo() => const UserEntity(
        id: 'userID',
        userName: 'userName',
        fullName: 'fullName',
        avatar: 'avatar',
      );

  String? get fullNameOrUserName => fullName ?? userName;

  String? get coverImg =>
      'https://www.bhg.com/thmb/dgy0b4w_W0oUJUxc7M4w3H4AyDo=/1866x0/filters:no_upscale():strip_icc()/living-room-gallery-shelves-l-shaped-couch-ELeyNpyyqpZ8hosOG3EG1X-b5a39646574544e8a75f2961332cd89a.jpg';

  String? get avatarImg =>
      'https://upload.wikimedia.org/wikipedia/commons/c/c3/LEONARDO.JPG';

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}

@JsonSerializable()
class UserPhoneEntity {
  UserPhoneEntity({
    this.object,
    this.id,
    this.phone,
    this.countryCode,
    this.isDefault,
    this.isVerify,
  });

  final Object? object;
  final String? id;
  final String? phone;
  final String? countryCode;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  final bool? isDefault;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  final bool? isVerify;

  static UserPhoneEntity demo() => UserPhoneEntity(
        phone: '4353467568',
        countryCode: '+84',
      );

  factory UserPhoneEntity.fromJson(Map<String, dynamic> json) =>
      _$UserPhoneEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserPhoneEntityToJson(this);
}

@JsonSerializable()
class UserEmailEntity {
  UserEmailEntity({
    this.id,
    this.emailAddress,
    this.emailLabel,
    this.isDefault,
    this.isVerify,
  });

  String? id;
  String? emailAddress;
  int? emailLabel;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  bool? isDefault;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  bool? isVerify;

  static UserEmailEntity demo() => UserEmailEntity(
        emailAddress: 'nguyendinhthien@gmail.com',
      );

  factory UserEmailEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEmailEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEmailEntityToJson(this);
}

@JsonSerializable()
class UserEmailResendOtpEntity {
  UserEmailResendOtpEntity({this.emailID});

  String? emailID;

  factory UserEmailResendOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEmailResendOtpEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEmailResendOtpEntityToJson(this);
}

enum AddressForType { receive, office, other }

@JsonEnum(valueField: 'rawValue')
enum AddressType {
  home(0),
  office(1),
  other(2);

  final int rawValue;

  const AddressType(this.rawValue);

  String get displayValue {
    switch (this) {
      case AddressType.home:
        return 'Nhà riêng';
      case AddressType.office:
        return 'Cơ quan';
      case AddressType.other:
        return 'Khác';
      default:
        return '';
    }
  }
}

@JsonSerializable()
class UserAddressEntity {
  const UserAddressEntity({
    this.object,
    this.id,
    this.fullName,
    this.phone,
    this.receiverEmail,
    this.fullAddress,
    this.addressType,
    this.city,
    this.district,
    this.ward,
  });

  UserAddressEntity demo() {
    return UserAddressEntity(
      fullAddress: '123a',
      fullName: 'Hà Nội',
      district: const DistrictEntity(
        cityId: '9',
      ),
      city: const CityEntity(
        id: '9',
      ),
      ward: const WardEntity(
        districtId: '9',
      ),
      phone: phone,
    );
  }

  UserAddressEntity empty() {
    return UserAddressEntity(
      fullAddress: '',
      fullName: '',
      district: const DistrictEntity(
        cityId: '',
      ),
      city: const CityEntity(
        id: '',
      ),
      phone: phone,
    );
  }

  final String? id;
  final String? fullName;
  final String? phone;
  final UserEmailEntity? receiverEmail;
  final String? fullAddress;
  final CityEntity? city;
  final DistrictEntity? district;
  final WardEntity? ward;
  final AddressType? addressType;

  final Object? object;

  // Const key for form
  static const String fullNameKey = 'fullNameKey';
  static const String phoneKey = 'phoneKey';
  static const String emailKey = 'emailKey';
  static const String cityKey = 'cityKey';
  static const String districtKey = 'districtKey';
  static const String wardKey = 'wardKey';
  static const String fullAddressKey = 'fullAddressKey';
  static const String addressTypeKey = 'addressTypeKey';

  String? get addressAndPhone =>
      [fullName, phone].joinWithoutNullEmpty('  |  ');

  String? get addressDetail => [
        fullAddress,
        ward?.name,
        district?.name,
        city?.name
      ].joinWithoutNullEmpty(', ');

  factory UserAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAddressEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserAddressEntityToJson(this);
}

@JsonSerializable()
class AddReceiverAddressEntity {
  AddReceiverAddressEntity({this.status, this.message});

  int? status;
  String? message;

  factory AddReceiverAddressEntity.fromJson(Map<String, dynamic> json) =>
      _$AddReceiverAddressEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AddReceiverAddressEntityToJson(this);
}

@JsonSerializable()
class AddressData {
  const AddressData({
    this.id,
    this.name,
    this.lat,
    this.lng,
    this.object,
  });

  final String? id;
  final String? name;
  final String? lat;
  final String? lng;
  final Object? object;

  factory AddressData.fromJson(Map<String, dynamic> json) =>
      _$AddressDataFromJson(json);

  Map<String, dynamic> toJson() => _$AddressDataToJson(this);
}
