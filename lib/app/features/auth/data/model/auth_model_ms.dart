import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/auth/self.dart';

part 'auth_model_ms.g.dart';

enum RegisterType {
  email,
  phone;

  final String translateKey = 'authen';
}

@JsonSerializable()
class AuthSignUpOTPReq {
  const AuthSignUpOTPReq({
    this.userLogin,
    this.countryCode,
    this.password,
  });

  factory AuthSignUpOTPReq.fromJson(Map<String, dynamic> json) =>
      _$AuthSignUpOTPReqFromJson(json);

  final String? userLogin;
  final String? countryCode;
  final String? password;

  Map<String, dynamic> toJson() => _$AuthSignUpOTPReqToJson(this);
}

@JsonSerializable()
@CopyWith()
class AuthSignUpOTPResp {
  const AuthSignUpOTPResp({
    this.userID,
    this.uuid,
    this.userLogin,
    this.otp,
  });

  final String? userID;
  final String? uuid;
  final String? userLogin;
  final String? otp;

  factory AuthSignUpOTPResp.fromJson(Map<String, dynamic> json) =>
      _$AuthSignUpOTPRespFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSignUpOTPRespToJson(this);

  AuthSignUpOTPEntity toEntity() => AuthSignUpOTPEntity(
        userID: userID,
        uuid: uuid,
        object: this,
      );
}

@JsonSerializable()
class AuthVerifyOTPReq {
  const AuthVerifyOTPReq({
    this.userID,
    this.uuid,
    this.otp,
    this.deviceToken,
    this.deviceID,
    this.type,
  });

  factory AuthVerifyOTPReq.fromJson(Map<String, dynamic> json) =>
      _$AuthVerifyOTPReqFromJson(json);
  final String? userID;
  final String? uuid;
  final String? otp;
  final String? deviceToken;
  final String? deviceID;
  final String? type;

  Map<String, dynamic> toJson() => _$AuthVerifyOTPReqToJson(this);
}

@JsonSerializable()
class VerifyOTPResp {
  const VerifyOTPResp({
    this.token,
    this.userID,
    this.userLogin,
    this.accountType,
  });

  final String? token;
  final String? userID;
  final String? userLogin;
  final int? accountType;

  factory VerifyOTPResp.fromJson(Map<String, dynamic> json) =>
      _$VerifyOTPRespFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOTPRespToJson(this);

  AuthConfirmEntity toEntity() => AuthConfirmEntity(
        userID: userID,
        token: token,
        userName: userLogin,
        email: userLogin,
        object: this,
      );
}

@JsonSerializable()
class AuthResendOTPReq {
  final String? userID;
  final String? phone;
  final String? countryCode;

  const AuthResendOTPReq({
    this.userID,
    this.phone,
    this.countryCode,
  });

  factory AuthResendOTPReq.fromJson(Map<String, dynamic> json) =>
      _$AuthResendOTPReqFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResendOTPReqToJson(this);
}

@JsonSerializable()
class AuthLoginPasswordReq {
  const AuthLoginPasswordReq({
    this.userLogin,
    this.countryCode,
    this.password,
    this.deviceToken,
    this.deviceID,
    this.type,
  });

  final String? userLogin;
  final String? countryCode;
  final String? password;
  final String? deviceToken;
  final String? deviceID;
  final String? type;

  factory AuthLoginPasswordReq.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginPasswordReqFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginPasswordReqToJson(this);
}

@JsonSerializable()
class AuthLoginPasswordResp {
  final String? token;
  final String? userID;
  final String? userLogin;
  final int? accountType;

  const AuthLoginPasswordResp({
    this.token,
    this.userID,
    this.userLogin,
    this.accountType,
  });

  AuthConfirmEntity toEntity() => AuthConfirmEntity(
        userID: userID,
        token: token,
        userName: userLogin,
        email: userLogin,
        object: this,
      );

  factory AuthLoginPasswordResp.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginPasswordRespFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginPasswordRespToJson(this);
}

@JsonSerializable()
class ForgotPasswordReq {
  final String? userLogin;
  final String? countryCode;

  const ForgotPasswordReq({
    this.userLogin,
    this.countryCode,
  });

  factory ForgotPasswordReq.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordReqFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordReqToJson(this);
}

@JsonSerializable()
class ForgotPasswordResp {
  final String? userID;
  final String? uuid;
  final String? userLogin;
  final String? otp;

  const ForgotPasswordResp({
    this.userID,
    this.uuid,
    this.userLogin,
    this.otp,
  });

  ForgotPasswordOTPEntity toEntity() => ForgotPasswordOTPEntity(
        userID: userID,
        uuid: uuid,
        userName: userLogin,
        object: this,
      );

  factory ForgotPasswordResp.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRespFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordRespToJson(this);
}

@JsonSerializable()
class ForgotPasswordVerifyOTPReq {
  final String? userID;
  final String? uuid;
  final String? otp;

  const ForgotPasswordVerifyOTPReq({
    this.userID,
    this.uuid,
    this.otp,
  });

  factory ForgotPasswordVerifyOTPReq.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordVerifyOTPReqFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordVerifyOTPReqToJson(this);
}

@JsonSerializable()
class ForgotPasswordVerifyOTPResp {
  final String? userID;
  final String? uuid;
  final String? userLogin;
  final String? otp;

  const ForgotPasswordVerifyOTPResp({
    this.userID,
    this.uuid,
    this.userLogin,
    this.otp,
  });

  ForgotPasswordConfirmOTPEntity toEntity() => ForgotPasswordConfirmOTPEntity(
        userID: userID,
        uuid: uuid,
        userName: userLogin,
        object: this,
      );

  factory ForgotPasswordVerifyOTPResp.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordVerifyOTPRespFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordVerifyOTPRespToJson(this);
}

@JsonSerializable()
class ForgotPasswordCreatePasswordReq {
  final String? userID;
  final String? uuid;
  final String? password;

  const ForgotPasswordCreatePasswordReq({
    this.userID,
    this.uuid,
    this.password,
  });

  factory ForgotPasswordCreatePasswordReq.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordCreatePasswordReqFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ForgotPasswordCreatePasswordReqToJson(this);
}

@JsonSerializable()
class ForgotPasswordCreatePasswordResp {
  final String? userID;
  final String? userLogin;

  const ForgotPasswordCreatePasswordResp({
    this.userID,
    this.userLogin,
  });

  ForgotPasswordCreatePasswordEntity toEntity() =>
      ForgotPasswordCreatePasswordEntity(
        userID: userID,
        userName: userLogin,
        object: this,
      );

  factory ForgotPasswordCreatePasswordResp.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPasswordCreatePasswordRespFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ForgotPasswordCreatePasswordRespToJson(this);
}
