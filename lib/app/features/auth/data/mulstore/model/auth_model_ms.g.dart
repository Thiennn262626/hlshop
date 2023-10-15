// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model_ms.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthSignUpOTPRespCWProxy {
  AuthSignUpOTPResp userID(String? userID);

  AuthSignUpOTPResp uuid(String? uuid);

  AuthSignUpOTPResp userLogin(String? userLogin);

  AuthSignUpOTPResp otp(String? otp);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthSignUpOTPResp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthSignUpOTPResp(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthSignUpOTPResp call({
    String? userID,
    String? uuid,
    String? userLogin,
    String? otp,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthSignUpOTPResp.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthSignUpOTPResp.copyWith.fieldName(...)`
class _$AuthSignUpOTPRespCWProxyImpl implements _$AuthSignUpOTPRespCWProxy {
  const _$AuthSignUpOTPRespCWProxyImpl(this._value);

  final AuthSignUpOTPResp _value;

  @override
  AuthSignUpOTPResp userID(String? userID) => this(userID: userID);

  @override
  AuthSignUpOTPResp uuid(String? uuid) => this(uuid: uuid);

  @override
  AuthSignUpOTPResp userLogin(String? userLogin) => this(userLogin: userLogin);

  @override
  AuthSignUpOTPResp otp(String? otp) => this(otp: otp);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthSignUpOTPResp(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthSignUpOTPResp(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthSignUpOTPResp call({
    Object? userID = const $CopyWithPlaceholder(),
    Object? uuid = const $CopyWithPlaceholder(),
    Object? userLogin = const $CopyWithPlaceholder(),
    Object? otp = const $CopyWithPlaceholder(),
  }) {
    return AuthSignUpOTPResp(
      userID: userID == const $CopyWithPlaceholder()
          ? _value.userID
          // ignore: cast_nullable_to_non_nullable
          : userID as String?,
      uuid: uuid == const $CopyWithPlaceholder()
          ? _value.uuid
          // ignore: cast_nullable_to_non_nullable
          : uuid as String?,
      userLogin: userLogin == const $CopyWithPlaceholder()
          ? _value.userLogin
          // ignore: cast_nullable_to_non_nullable
          : userLogin as String?,
      otp: otp == const $CopyWithPlaceholder()
          ? _value.otp
          // ignore: cast_nullable_to_non_nullable
          : otp as String?,
    );
  }
}

extension $AuthSignUpOTPRespCopyWith on AuthSignUpOTPResp {
  /// Returns a callable class that can be used as follows: `instanceOfAuthSignUpOTPResp.copyWith(...)` or like so:`instanceOfAuthSignUpOTPResp.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthSignUpOTPRespCWProxy get copyWith =>
      _$AuthSignUpOTPRespCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthSignUpOTPReq _$AuthSignUpOTPReqFromJson(Map<String, dynamic> json) =>
    AuthSignUpOTPReq(
      userLogin: json['userLogin'] as String?,
      countryCode: json['countryCode'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$AuthSignUpOTPReqToJson(AuthSignUpOTPReq instance) =>
    <String, dynamic>{
      'userLogin': instance.userLogin,
      'countryCode': instance.countryCode,
      'password': instance.password,
    };

AuthSignUpOTPResp _$AuthSignUpOTPRespFromJson(Map<String, dynamic> json) =>
    AuthSignUpOTPResp(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      userLogin: json['userLogin'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$AuthSignUpOTPRespToJson(AuthSignUpOTPResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'userLogin': instance.userLogin,
      'otp': instance.otp,
    };

AuthVerifyOTPReq _$AuthVerifyOTPReqFromJson(Map<String, dynamic> json) =>
    AuthVerifyOTPReq(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
      deviceToken: json['deviceToken'] as String?,
      deviceID: json['deviceID'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AuthVerifyOTPReqToJson(AuthVerifyOTPReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'otp': instance.otp,
      'deviceToken': instance.deviceToken,
      'deviceID': instance.deviceID,
      'type': instance.type,
    };

VerifyOTPResp _$VerifyOTPRespFromJson(Map<String, dynamic> json) =>
    VerifyOTPResp(
      token: json['token'] as String?,
      userID: json['userID'] as String?,
      userLogin: json['userLogin'] as String?,
      accountType: json['accountType'] as int?,
    );

Map<String, dynamic> _$VerifyOTPRespToJson(VerifyOTPResp instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userID': instance.userID,
      'userLogin': instance.userLogin,
      'accountType': instance.accountType,
    };

AuthResendOTPReq _$AuthResendOTPReqFromJson(Map<String, dynamic> json) =>
    AuthResendOTPReq(
      userID: json['userID'] as String?,
      phone: json['phone'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$AuthResendOTPReqToJson(AuthResendOTPReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'phone': instance.phone,
      'countryCode': instance.countryCode,
    };

AuthLoginPasswordReq _$AuthLoginPasswordReqFromJson(
        Map<String, dynamic> json) =>
    AuthLoginPasswordReq(
      userLogin: json['userLogin'] as String?,
      countryCode: json['countryCode'] as String?,
      password: json['password'] as String?,
      deviceToken: json['deviceToken'] as String?,
      deviceID: json['deviceID'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$AuthLoginPasswordReqToJson(
        AuthLoginPasswordReq instance) =>
    <String, dynamic>{
      'userLogin': instance.userLogin,
      'countryCode': instance.countryCode,
      'password': instance.password,
      'deviceToken': instance.deviceToken,
      'deviceID': instance.deviceID,
      'type': instance.type,
    };

AuthLoginPasswordResp _$AuthLoginPasswordRespFromJson(
        Map<String, dynamic> json) =>
    AuthLoginPasswordResp(
      token: json['token'] as String?,
      userID: json['userID'] as String?,
      userLogin: json['userLogin'] as String?,
      accountType: json['accountType'] as int?,
    );

Map<String, dynamic> _$AuthLoginPasswordRespToJson(
        AuthLoginPasswordResp instance) =>
    <String, dynamic>{
      'token': instance.token,
      'userID': instance.userID,
      'userLogin': instance.userLogin,
      'accountType': instance.accountType,
    };

ForgotPasswordReq _$ForgotPasswordReqFromJson(Map<String, dynamic> json) =>
    ForgotPasswordReq(
      userLogin: json['userLogin'] as String?,
      countryCode: json['countryCode'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordReqToJson(ForgotPasswordReq instance) =>
    <String, dynamic>{
      'userLogin': instance.userLogin,
      'countryCode': instance.countryCode,
    };

ForgotPasswordResp _$ForgotPasswordRespFromJson(Map<String, dynamic> json) =>
    ForgotPasswordResp(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      userLogin: json['userLogin'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordRespToJson(ForgotPasswordResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'userLogin': instance.userLogin,
      'otp': instance.otp,
    };

ForgotPasswordVerifyOTPReq _$ForgotPasswordVerifyOTPReqFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordVerifyOTPReq(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordVerifyOTPReqToJson(
        ForgotPasswordVerifyOTPReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'otp': instance.otp,
    };

ForgotPasswordVerifyOTPResp _$ForgotPasswordVerifyOTPRespFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordVerifyOTPResp(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      userLogin: json['userLogin'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordVerifyOTPRespToJson(
        ForgotPasswordVerifyOTPResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'userLogin': instance.userLogin,
      'otp': instance.otp,
    };

ForgotPasswordCreatePasswordReq _$ForgotPasswordCreatePasswordReqFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordCreatePasswordReq(
      userID: json['userID'] as String?,
      uuid: json['uuid'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordCreatePasswordReqToJson(
        ForgotPasswordCreatePasswordReq instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'uuid': instance.uuid,
      'password': instance.password,
    };

ForgotPasswordCreatePasswordResp _$ForgotPasswordCreatePasswordRespFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordCreatePasswordResp(
      userID: json['userID'] as String?,
      userLogin: json['userLogin'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordCreatePasswordRespToJson(
        ForgotPasswordCreatePasswordResp instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'userLogin': instance.userLogin,
    };
