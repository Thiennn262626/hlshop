import 'package:hlshop/all_file/all_file.dart';
import 'package:hlshop/app/features/user/self.dart';

part 'auth_entity.g.dart';

@JsonSerializable()
@CopyWith()
class AuthSignUpOTPEntity {
  const AuthSignUpOTPEntity({
    this.userID,
    this.uuid,
    this.object,
  });

  final String? userID;
  final String? uuid;
  final Object? object;

  factory AuthSignUpOTPEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthSignUpOTPEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthSignUpOTPEntityToJson(this);
}

@JsonSerializable()
@CopyWith()
class AuthConfirmEntity {
  const AuthConfirmEntity({
    this.token,
    this.userID,
    this.userName,
    this.email,
    this.object,
  });

  final String? token;
  final String? userID;
  final String? userName;
  final String? email;
  final Object? object;

  UserEntity get userEntity => UserEntity(
        id: userID,
        userName: userName,
      );

  factory AuthConfirmEntity.fromJson(Map<String, dynamic> json) =>
      _$AuthConfirmEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthConfirmEntityToJson(this);
}

@JsonSerializable()
class ForgotPasswordOTPEntity {
  final String? userID;
  final String? userName;
  final String? uuid;
  final Object? object;

  const ForgotPasswordOTPEntity({
    this.userID,
    this.userName,
    this.uuid,
    this.object,
  });

  factory ForgotPasswordOTPEntity.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordOTPEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordOTPEntityToJson(this);
}

@JsonSerializable()
class ForgotPasswordConfirmOTPEntity {
  final String? userID;
  final String? uuid;
  final String? userName;
  final Object? object;

  const ForgotPasswordConfirmOTPEntity({
    this.userID,
    this.uuid,
    this.userName,
    this.object,
  });

  factory ForgotPasswordConfirmOTPEntity.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordConfirmOTPEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordConfirmOTPEntityToJson(this);
}

@JsonSerializable()
class ForgotPasswordCreatePasswordEntity {
  final String? userID;
  final String? userName;
  final Object? object;

  const ForgotPasswordCreatePasswordEntity({
    this.userID,
    this.userName,
    this.object,
  });

  factory ForgotPasswordCreatePasswordEntity.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPasswordCreatePasswordEntityFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ForgotPasswordCreatePasswordEntityToJson(this);
}
