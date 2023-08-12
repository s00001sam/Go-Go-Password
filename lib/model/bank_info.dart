import 'dart:ffi';

import 'package:gogo_password/model/base_secure_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_info.g.dart';

/// 銀行賬戶、信用卡
@JsonSerializable()
class BankInfo extends BaseSecureInfo {
  String name;
  String bankImageUrl;
  String bankCode;
  String holderName;
  String note;
  int publishTime;
  BankType type;

  // 銀行賬戶
  String? account;
  String? cardPassword; // 銀行卡密碼

  // 信用卡
  String? cardNumber;
  CreditCardType? creditCardType;
  String? expirationDate;
  String? cvv;

  factory BankInfo.fromJson(Map<String, dynamic> json) =>
      _$BankInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BankInfoToJson(this);

//<editor-fold desc="Data Methods">
  BankInfo({
    required this.name,
    required this.bankImageUrl,
    required this.bankCode,
    required this.holderName,
    required this.note,
    required this.publishTime,
    required this.type,
    this.account,
    this.cardPassword,
    this.cardNumber,
    this.creditCardType,
    this.expirationDate,
    this.cvv,
  }) : super(
          id: publishTime.toString(),
          title: name,
          description: account ?? cardNumber ?? '',
          publishTime: publishTime,
          imageUrl: bankImageUrl,
        );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BankInfo &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          bankImageUrl == other.bankImageUrl &&
          bankCode == other.bankCode &&
          holderName == other.holderName &&
          note == other.note &&
          publishTime == other.publishTime &&
          type == other.type &&
          account == other.account &&
          cardPassword == other.cardPassword &&
          cardNumber == other.cardNumber &&
          creditCardType == other.creditCardType &&
          expirationDate == other.expirationDate &&
          cvv == other.cvv);

  @override
  int get hashCode =>
      name.hashCode ^
      bankImageUrl.hashCode ^
      bankCode.hashCode ^
      holderName.hashCode ^
      note.hashCode ^
      publishTime.hashCode ^
      type.hashCode ^
      account.hashCode ^
      cardPassword.hashCode ^
      cardNumber.hashCode ^
      creditCardType.hashCode ^
      expirationDate.hashCode ^
      cvv.hashCode;

  @override
  String toString() {
    return 'BankInfo{ name: $name, bankImageUrl: $bankImageUrl, bankCode: $bankCode, holderName: $holderName, note: $note, publishTime: $publishTime, type: $type, account: $account, cardPassword: $cardPassword, cardNumber: $cardNumber, creditCardType: $creditCardType, expirationDate: $expirationDate, cvv: $cvv,}';
  }

  BankInfo copyWith({
    String? name,
    String? bankImageUrl,
    String? bankCode,
    String? holderName,
    String? note,
    int? publishTime,
    BankType? type,
    String? account,
    String? cardPassword,
    String? cardNumber,
    CreditCardType? creditCardType,
    String? expirationDate,
    String? cvv,
  }) {
    return BankInfo(
      name: name ?? this.name,
      bankImageUrl: bankImageUrl ?? this.bankImageUrl,
      bankCode: bankCode ?? this.bankCode,
      holderName: holderName ?? this.holderName,
      note: note ?? this.note,
      publishTime: publishTime ?? this.publishTime,
      type: type ?? this.type,
      account: account ?? this.account,
      cardPassword: cardPassword ?? this.cardPassword,
      cardNumber: cardNumber ?? this.cardNumber,
      creditCardType: creditCardType ?? this.creditCardType,
      expirationDate: expirationDate ?? this.expirationDate,
      cvv: cvv ?? this.cvv,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'bankImageUrl': this.bankImageUrl,
      'bankCode': this.bankCode,
      'holderName': this.holderName,
      'note': this.note,
      'publishTime': this.publishTime,
      'type': this.type,
      'account': this.account,
      'cardPassword': this.cardPassword,
      'cardNumber': this.cardNumber,
      'creditCardType': this.creditCardType,
      'expirationDate': this.expirationDate,
      'cvv': this.cvv,
    };
  }

  factory BankInfo.fromMap(Map<String, dynamic> map) {
    return BankInfo(
      name: map['name'] as String,
      bankImageUrl: map['bankImageUrl'] as String,
      bankCode: map['bankCode'] as String,
      holderName: map['holderName'] as String,
      note: map['note'] as String,
      publishTime: map['publishTime'] as int,
      type: map['type'] as BankType,
      account: map['account'] as String,
      cardPassword: map['cardPassword'] as String,
      cardNumber: map['cardNumber'] as String,
      creditCardType: map['creditCardType'] as CreditCardType,
      expirationDate: map['expirationDate'] as String,
      cvv: map['cvv'] as String,
    );
  }

//</editor-fold>
}

BankInfo createBankCard(
  String name,
  String bankImageUrl,
  String bankCode,
  String holderName,
  String note,
  int publishTime,
  String account,
  String cardPassword,
) {
  return BankInfo(
    name: name,
    bankImageUrl: bankImageUrl,
    bankCode: bankCode,
    holderName: holderName,
    note: note,
    publishTime: publishTime,
    type: BankType.bankAccount,
    account: account,
    cardPassword: cardPassword,
  );
}

BankInfo createCreditCard(
  String name,
  String bankImageUrl,
  String bankCode,
  String holderName,
  String note,
  int publishTime,
  String cardNumber,
  CreditCardType creditCardType,
  String expirationDate,
  String cvv,
) {
  return BankInfo(
    name: name,
    bankImageUrl: bankImageUrl,
    bankCode: bankCode,
    holderName: holderName,
    note: note,
    publishTime: publishTime,
    type: BankType.creditCard,
    cardNumber: cardNumber,
    creditCardType: creditCardType,
    expirationDate: expirationDate,
    cvv: cvv,
  );
}

enum BankType {
  bankAccount,
  creditCard,
}

enum CreditCardType {
  visa,
  masterCard,
  other,
}
