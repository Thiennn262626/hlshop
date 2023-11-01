import 'package:hlshop/all_file/all_file.dart';

part 'ms_user_info.g.dart';

@JsonSerializable()
class MsAddPhoneReq {
  final String? phoneNo;
  final int? phoneLabel;
  final int? isDefault;

  const MsAddPhoneReq({
    this.phoneNo,
    this.phoneLabel,
    this.isDefault,
  });

  factory MsAddPhoneReq.fromJson(Map<String, dynamic> json) =>
      _$MsAddPhoneReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsAddPhoneReqToJson(this);
}

@JsonSerializable()
class MsAddPhoneResultWrapper {
  final int? status;
  final String? message;
  final MsAddPhoneResp? result;

  const MsAddPhoneResultWrapper({
    this.status,
    this.message,
    this.result,
  });

  factory MsAddPhoneResultWrapper.fromJson(Map<String, dynamic> json) =>
      _$MsAddPhoneResultWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$MsAddPhoneResultWrapperToJson(this);
}

@JsonSerializable()
class MsAddPhoneResp {
  final String? userID;
  final String? uuid;
  final String? phoneID;
  final String? phone;
  final String? today;
  final String? expired;

  const MsAddPhoneResp({
    this.userID,
    this.uuid,
    this.phoneID,
    this.phone,
    this.today,
    this.expired,
  });

  factory MsAddPhoneResp.fromJson(Map<String, dynamic> json) =>
      _$MsAddPhoneRespFromJson(json);

  Map<String, dynamic> toJson() => _$MsAddPhoneRespToJson(this);
}

@JsonSerializable()
class MsVerifyPhoneReq {
  final String? phoneID;
  final String? uuid;
  final String? otp;

  const MsVerifyPhoneReq({
    this.phoneID,
    this.uuid,
    this.otp,
  });

  factory MsVerifyPhoneReq.fromJson(Map<String, dynamic> json) =>
      _$MsVerifyPhoneReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsVerifyPhoneReqToJson(this);
}

@JsonSerializable()
class MsResendPhoneReq {
  final String? phoneID;

  const MsResendPhoneReq({
    this.phoneID,
  });

  factory MsResendPhoneReq.fromJson(Map<String, dynamic> json) =>
      _$MsResendPhoneReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsResendPhoneReqToJson(this);
}

@JsonSerializable()
class MsAddEmailReq {
  final String? emailAddress;
  final int? emailLabel;
  final int? isDefault;

  const MsAddEmailReq({
    this.emailAddress,
    this.emailLabel,
    this.isDefault,
  });

  factory MsAddEmailReq.fromJson(Map<String, dynamic> json) =>
      _$MsAddEmailReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsAddEmailReqToJson(this);
}

@JsonSerializable()
class MsAddEmailResultWrapper {
  final int? status;
  final String? message;
  final MsAddEmailResp? result;

  const MsAddEmailResultWrapper({
    this.status,
    this.message,
    this.result,
  });

  factory MsAddEmailResultWrapper.fromJson(Map<String, dynamic> json) =>
      _$MsAddEmailResultWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$MsAddEmailResultWrapperToJson(this);
}

@JsonSerializable()
class MsAddEmailResp {
  final String? userID;
  final String? uuid;
  final String? emailID;
  final String? email;
  final String? today;
  final String? expired;

  const MsAddEmailResp({
    this.userID,
    this.uuid,
    this.emailID,
    this.email,
    this.today,
    this.expired,
  });

  factory MsAddEmailResp.fromJson(Map<String, dynamic> json) =>
      _$MsAddEmailRespFromJson(json);

  Map<String, dynamic> toJson() => _$MsAddEmailRespToJson(this);
}

@JsonSerializable()
class MsVerifyEmailReq {
  final String? emailID;
  final String? uuid;
  final String? otp;

  const MsVerifyEmailReq({
    this.emailID,
    this.uuid,
    this.otp,
  });

  factory MsVerifyEmailReq.fromJson(Map<String, dynamic> json) =>
      _$MsVerifyEmailReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsVerifyEmailReqToJson(this);
}

@JsonSerializable()
class MsResendEmailReq {
  final String? emailID;

  const MsResendEmailReq({
    this.emailID,
  });

  factory MsResendEmailReq.fromJson(Map<String, dynamic> json) =>
      _$MsResendEmailReqFromJson(json);

  Map<String, dynamic> toJson() => _$MsResendEmailReqToJson(this);
}
