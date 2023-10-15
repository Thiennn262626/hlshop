// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hlshop/all_file/all_file.dart';
part 'payment_entity.g.dart';

abstract class PaymentMethodEntity {
  const PaymentMethodEntity({
    this.object,
    this.id,
    this.name,
    this.logo,
  });

  final Object? object;
  final String? id;
  final String? name;
  final String? logo;
}

@JsonSerializable()
class BankAccountEntity extends PaymentMethodEntity {
  const BankAccountEntity({
    super.object,
    super.id,
    super.name,
    super.logo,
    this.ownerName,
    this.branchName,
    this.numberAccount,
  });

  final String? ownerName;
  final String? branchName;
  final String? numberAccount;

  //const key for form
  static const String ownerNameKey = 'fullNameKey';
  static const String idKey = 'idKey';
  static const String bankNameKey = 'bankNameKey';
  static const String branchNameKey = 'branchNameKey';
  static const String numberAccountKey = 'numberAccountKey';

  factory BankAccountEntity.fromJson(Map<String, dynamic> json) =>
      _$BankAccountEntityFromJson(json);
  Map<String, dynamic> toJson() => _$BankAccountEntityToJson(this);
}

@JsonSerializable()
class CreditCardEntity extends PaymentMethodEntity {
  CreditCardEntity({
    super.object,
    super.id,
    super.logo,
    super.name,
    this.ownerName,
    this.cardType,
    this.numberCard,
    this.cvvCode,
    this.expirationDate,
    this.address,
    this.postalCode,
  });

  final String? ownerName;
  final String? cardType;
  final String? numberCard;
  final String? cvvCode;
  final String? expirationDate;
  final String? address;
  final String? postalCode;

  //const key for form
  static const String ownerNameKey = 'fullNameKey';
  static const String cardTypeKey = 'cardTypeKey';
  static const String numberCardKey = 'numberCardKey';
  static const String expirationDateKey = 'expirationDateKey';
  static const String postalCodeKey = 'postalCodeKey';
  static const String addressKey = 'addressKey';
  static const String cvvCodeKey = 'cvvCodeKey';

  factory CreditCardEntity.fromJson(Map<String, dynamic> json) =>
      _$CreditCardEntityFromJson(json);
  Map<String, dynamic> toJson() => _$CreditCardEntityToJson(this);
}
