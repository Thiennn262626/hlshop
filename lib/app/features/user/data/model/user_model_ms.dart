import 'package:hlshop/all_file/all_file.dart';

part 'user_model_ms.g.dart';

@JsonSerializable()
class UserMS {
  const UserMS({
    this.userID,
    this.userLoginID,
    this.contactFullName,
    this.slogan,
    this.gender,
    this.pID,
    this.createdDate,
    this.accountType,
    this.accountStatus,
    this.userType,
    this.userAvatar,
    this.userCover,
    this.emails,
    this.phones,
    this.urls,
  });

  final String? userID;
  final String? userLoginID;
  final String? contactFullName;
  final String? slogan;
  final dynamic gender;
  final dynamic pID;
  final String? createdDate;
  final int? accountType;
  final int? accountStatus;
  final dynamic userType;
  final String? userAvatar;
  final String? userCover;
  final List<MsEmail>? emails;
  final List<MsPhone>? phones;
  final List<MsUrl>? urls;

  UserEntity toEntity() => UserEntity(
        id: userID,
        userName: userLoginID,
        fullName: contactFullName,
        avatar: userAvatar,
        userCover: userCover,
        phoneList: phones?.map((e) => e.toEntity()).toList(),
        emailList: emails?.map((e) => e.toEntity()).toList(),
        object: this,
      );

  factory UserMS.fromJson(Map<String, dynamic> json) => _$UserMSFromJson(json);

  Map<String, dynamic> toJson() => _$UserMSToJson(this);
}

@JsonSerializable()
class MsPhone {
  final String? phoneID;
  final String? phoneNo;
  final String? extendNumber;
  final String? phoneArea;
  final String? countryArea;
  final int? phoneLabel;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  final bool? isDefault;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  final bool? isVerify;

  const MsPhone({
    this.phoneID,
    this.phoneLabel,
    this.isDefault,
    this.isVerify,
    this.phoneNo,
    this.extendNumber,
    this.phoneArea,
    this.countryArea,
  });

  UserPhoneEntity toEntity() => UserPhoneEntity(
        object: this,
        id: phoneID,
        phone: phoneNo,
        countryCode: countryArea,
        isDefault: isDefault,
        isVerify: isVerify,
      );

  factory MsPhone.fromJson(Map<String, dynamic> json) =>
      _$MsPhoneFromJson(json);

  Map<String, dynamic> toJson() => _$MsPhoneToJson(this);
}

@JsonSerializable()
class MsUrl {
  final String? urlID;
  final String? urlString;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  final bool? isDefault;

  const MsUrl({
    this.urlID,
    this.urlString,
    this.isDefault,
  });

  factory MsUrl.fromJson(Map<String, dynamic> json) => _$MsUrlFromJson(json);

  Map<String, dynamic> toJson() => _$MsUrlToJson(this);
}

@JsonSerializable()
class MsEmail {
  final String? emailID;
  final String? emailAddress;
  final int? emailLabel;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  final bool? isDefault;
  @JsonKey(fromJson: boolFromAny, toJson: boolToNum)
  final bool? isVerify;

  const MsEmail({
    this.emailID,
    this.emailAddress,
    this.emailLabel,
    this.isDefault,
    this.isVerify,
  });

  UserEmailEntity toEntity() => UserEmailEntity(
        id: emailID,
        emailAddress: emailAddress,
        emailLabel: emailLabel,
        isDefault: isDefault,
        isVerify: isVerify,
      );

  factory MsEmail.fromJson(Map<String, dynamic> json) =>
      _$MsEmailFromJson(json);

  Map<String, dynamic> toJson() => _$MsEmailToJson(this);
}

@JsonSerializable()
class ResponseUserMS {
  ResponseUserMS({this.status, this.message});

  int? status;
  String? message;

  FutureOr<AddReceiverAddressEntity>? toEntity() {
    return null;
  }

  factory ResponseUserMS.fromJson(Map<String, dynamic> json) =>
      _$ResponseUserMSFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseUserMSToJson(this);
}

@JsonSerializable()
class AddEmailAddressMS {
  AddEmailAddressMS({
    this.emailAddress,
    this.emailLabel,
    this.isDefault,
  });

  String? emailAddress;
  int? emailLabel;
  int? isDefault;

  factory AddEmailAddressMS.fromJson(Map<String, dynamic> json) =>
      _$AddEmailAddressMSFromJson(json);

  Map<String, dynamic> toJson() => _$AddEmailAddressMSToJson(this);

  FutureOr<UserAddressEntity>? toEntity() {
    return null;
  }
}

@JsonSerializable()
class EmailResendOtpMS {
  EmailResendOtpMS({
    this.emailID,
  });

  String? emailID;

  factory EmailResendOtpMS.fromJson(Map<String, dynamic> json) =>
      _$EmailResendOtpMSFromJson(json);

  Map<String, dynamic> toJson() => _$EmailResendOtpMSToJson(this);

  FutureOr<UserAddressEntity>? toEntity() {
    return null;
  }
}
