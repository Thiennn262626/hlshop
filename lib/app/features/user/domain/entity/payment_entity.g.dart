// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankAccountEntity _$BankAccountEntityFromJson(Map<String, dynamic> json) =>
    BankAccountEntity(
      object: json['object'],
      id: json['id'] as String?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      ownerName: json['ownerName'] as String?,
      branchName: json['branchName'] as String?,
      numberAccount: json['numberAccount'] as String?,
    );

Map<String, dynamic> _$BankAccountEntityToJson(BankAccountEntity instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'ownerName': instance.ownerName,
      'branchName': instance.branchName,
      'numberAccount': instance.numberAccount,
    };

CreditCardEntity _$CreditCardEntityFromJson(Map<String, dynamic> json) =>
    CreditCardEntity(
      object: json['object'],
      id: json['id'] as String?,
      logo: json['logo'] as String?,
      name: json['name'] as String?,
      ownerName: json['ownerName'] as String?,
      cardType: json['cardType'] as String?,
      numberCard: json['numberCard'] as String?,
      cvvCode: json['cvvCode'] as String?,
      expirationDate: json['expirationDate'] as String?,
      address: json['address'] as String?,
      postalCode: json['postalCode'] as String?,
    );

Map<String, dynamic> _$CreditCardEntityToJson(CreditCardEntity instance) =>
    <String, dynamic>{
      'object': instance.object,
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'ownerName': instance.ownerName,
      'cardType': instance.cardType,
      'numberCard': instance.numberCard,
      'cvvCode': instance.cvvCode,
      'expirationDate': instance.expirationDate,
      'address': instance.address,
      'postalCode': instance.postalCode,
    };
