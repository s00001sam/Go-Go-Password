import 'package:gogo_password/util/constants.dart';
import 'package:gogo_password/util/util.dart';
import 'package:isar/isar.dart';

part 'local_secure_info.g.dart';

@Collection()
class LocalSecureInfo {
  Id get isarId => fastHash(id);

  // base
  String id = '';
  String title = ''; // 標題
  String imageUrl = ''; // 照片
  int createdTime = 0; // 創建時間
  int updatedTime = 0; // 更新時間
  String note = ''; // 筆記
  @enumerated
  LocalSecureInfoType localSecureInfoType = LocalSecureInfoType.unKnown;

  // LoginInfo
  String? webUrl;
  String? loginAccount;
  String? password;

  // BankInfo
  String? bankCode;
  String? holderName;
  @enumerated
  BankType bankType = BankType.unKnown;

  // BankInfo - 銀行賬戶
  String? bankAccount;
  String? cardPassword;

  // BankInfo - 信用卡
  String? cardNumber;
  @enumerated
  CreditCardType creditCardType = CreditCardType.unKnown;
  String? expirationDate;
  String? cvv;

//<editor-fold desc="Data Methods">
  LocalSecureInfo({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.createdTime,
    required this.updatedTime,
    required this.note,
    required this.localSecureInfoType,
    this.webUrl,
    this.loginAccount,
    this.password,
    this.bankCode,
    this.holderName,
    this.bankType = BankType.unKnown,
    this.bankAccount,
    this.cardPassword,
    this.cardNumber,
    this.creditCardType = CreditCardType.unKnown,
    this.expirationDate,
    this.cvv,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalSecureInfo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          imageUrl == other.imageUrl &&
          createdTime == other.createdTime &&
          updatedTime == other.updatedTime &&
          note == other.note &&
          localSecureInfoType == other.localSecureInfoType &&
          webUrl == other.webUrl &&
          loginAccount == other.loginAccount &&
          password == other.password &&
          bankCode == other.bankCode &&
          holderName == other.holderName &&
          bankType == other.bankType &&
          bankAccount == other.bankAccount &&
          cardPassword == other.cardPassword &&
          cardNumber == other.cardNumber &&
          creditCardType == other.creditCardType &&
          expirationDate == other.expirationDate &&
          cvv == other.cvv);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      imageUrl.hashCode ^
      createdTime.hashCode ^
      updatedTime.hashCode ^
      note.hashCode ^
      localSecureInfoType.hashCode ^
      webUrl.hashCode ^
      loginAccount.hashCode ^
      password.hashCode ^
      bankCode.hashCode ^
      holderName.hashCode ^
      bankType.hashCode ^
      bankAccount.hashCode ^
      cardPassword.hashCode ^
      cardNumber.hashCode ^
      creditCardType.hashCode ^
      expirationDate.hashCode ^
      cvv.hashCode;

  @override
  String toString() {
    return 'LocalSecureInfo{ id: $id, title: $title, imageUrl: $imageUrl, createdTime: $createdTime, updatedTime: $updatedTime, note: $note, localSecureInfoType: $localSecureInfoType, webUrl: $webUrl, loginAccount: $loginAccount, password: $password, bankCode: $bankCode, holderName: $holderName, bankType: $bankType, bankAccount: $bankAccount, cardPassword: $cardPassword, cardNumber: $cardNumber, creditCardType: $creditCardType, expirationDate: $expirationDate, cvv: $cvv,}';
  }

  LocalSecureInfo copyWith({
    String? id,
    String? title,
    String? description,
    String? imageUrl,
    int? createdTime,
    int? updatedTime,
    String? note,
    LocalSecureInfoType? localSecureInfoType,
    String? webUrl,
    String? loginAccount,
    String? password,
    String? bankCode,
    String? holderName,
    BankType? bankType,
    String? bankAccount,
    String? cardPassword,
    String? cardNumber,
    CreditCardType? creditCardType,
    String? expirationDate,
    String? cvv,
  }) {
    return LocalSecureInfo(
      id: id ?? this.id,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
      note: note ?? this.note,
      localSecureInfoType: localSecureInfoType ?? this.localSecureInfoType,
      webUrl: webUrl ?? this.webUrl,
      loginAccount: loginAccount ?? this.loginAccount,
      password: password ?? this.password,
      bankCode: bankCode ?? this.bankCode,
      holderName: holderName ?? this.holderName,
      bankType: bankType ?? this.bankType,
      bankAccount: bankAccount ?? this.bankAccount,
      cardPassword: cardPassword ?? this.cardPassword,
      cardNumber: cardNumber ?? this.cardNumber,
      creditCardType: creditCardType ?? this.creditCardType,
      expirationDate: expirationDate ?? this.expirationDate,
      cvv: cvv ?? this.cvv,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'createdTime': createdTime,
      'updatedTime': updatedTime,
      'note': note,
      'localSecureInfoType': localSecureInfoType,
      'webUrl': webUrl,
      'loginAccount': loginAccount,
      'password': password,
      'bankCode': bankCode,
      'holderName': holderName,
      'bankType': bankType,
      'bankAccount': bankAccount,
      'cardPassword': cardPassword,
      'cardNumber': cardNumber,
      'creditCardType': creditCardType,
      'expirationDate': expirationDate,
      'cvv': cvv,
    };
  }

  factory LocalSecureInfo.fromMap(Map<String, dynamic> map) {
    return LocalSecureInfo(
      id: map['id'] as String,
      title: map['title'] as String,
      imageUrl: map['imageUrl'] as String,
      createdTime: map['createdTime'] as int,
      updatedTime: map['updatedTime'] as int,
      note: map['note'] as String,
      localSecureInfoType: map['localSecureInfoType'] as LocalSecureInfoType,
      webUrl: map['webUrl'] as String,
      loginAccount: map['loginAccount'] as String,
      password: map['password'] as String,
      bankCode: map['bankCode'] as String,
      holderName: map['holderName'] as String,
      bankType: map['bankType'] as BankType,
      bankAccount: map['bankAccount'] as String,
      cardPassword: map['cardPassword'] as String,
      cardNumber: map['cardNumber'] as String,
      creditCardType: map['creditCardType'] as CreditCardType,
      expirationDate: map['expirationDate'] as String,
      cvv: map['cvv'] as String,
    );
  }

//</editor-fold>
}
