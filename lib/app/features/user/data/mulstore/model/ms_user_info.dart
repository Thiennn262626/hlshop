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
