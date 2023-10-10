// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankInfo _$BankInfoFromJson(Map<String, dynamic> json) => BankInfo(
      name: json['name'] as String,
      bankImageUrl: json['bankImageUrl'] as String,
      bankCode: json['bankCode'] as String,
      holderName: json['holderName'] as String,
      note: json['note'] as String,
      createdTime: json['createdTime'] as int,
      updatedTime: json['updatedTime'] as int,
      type: $enumDecode(_$BankTypeEnumMap, json['type']),
      account: json['account'] as String?,
      cardPassword: json['cardPassword'] as String?,
      cardNumber: json['cardNumber'] as String?,
      creditCardType:
          $enumDecodeNullable(_$CreditCardTypeEnumMap, json['creditCardType']),
      expirationDate: json['expirationDate'] as String?,
      cvv: json['cvv'] as String?,
    )
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..description = json['description'] as String
      ..imageUrl = json['imageUrl'] as String;

Map<String, dynamic> _$BankInfoToJson(BankInfo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'bankImageUrl': instance.bankImageUrl,
      'bankCode': instance.bankCode,
      'holderName': instance.holderName,
      'note': instance.note,
      'createdTime': instance.createdTime,
      'updatedTime': instance.updatedTime,
      'type': _$BankTypeEnumMap[instance.type]!,
      'account': instance.account,
      'cardPassword': instance.cardPassword,
      'cardNumber': instance.cardNumber,
      'creditCardType': _$CreditCardTypeEnumMap[instance.creditCardType],
      'expirationDate': instance.expirationDate,
      'cvv': instance.cvv,
    };

const _$BankTypeEnumMap = {
  BankType.bankAccount: 'bankAccount',
  BankType.creditCard: 'creditCard',
  BankType.unKnown: 'unKnown',
};

const _$CreditCardTypeEnumMap = {
  CreditCardType.visa: 'visa',
  CreditCardType.masterCard: 'masterCard',
  CreditCardType.other: 'other',
  CreditCardType.unKnown: 'unKnown',
};
