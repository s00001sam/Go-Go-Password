import 'package:gogo_password/model/bank_info.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/model/note_info.dart';
import 'package:gogo_password/source/database/model/local_secure_info.dart';
import 'package:gogo_password/util/constants.dart';

extension LocalSecureInfoParsing on LocalSecureInfo {
  bool isLoginInfo() {
    return localSecureInfoType == LocalSecureInfoType.login;
  }

  LoginInfo? toLoginInfo() {
    if (!isLoginInfo()) return null;

    return LoginInfo(
      name: title,
      webUrl: webUrl ?? '',
      webImageUrl: imageUrl,
      account: loginAccount ?? '',
      password: password ?? '',
      note: note,
      createdTime: createdTime,
      updatedTime: updatedTime,
    );
  }

  bool isBankInfo() {
    return localSecureInfoType == LocalSecureInfoType.bank;
  }

  BankInfo? toBankInfo() {
    if (!isBankInfo()) return null;

    return BankInfo(
      name: title,
      bankImageUrl: imageUrl,
      bankCode: bankCode ?? '',
      holderName: holderName ?? '',
      note: note,
      createdTime: createdTime,
      updatedTime: updatedTime,
      type: bankType,
      account: bankAccount,
      cardPassword: cardPassword,
      cardNumber: cardNumber,
      creditCardType: creditCardType,
      expirationDate: expirationDate,
      cvv: cvv,
    );
  }

  bool isNoteInfo() {
    return localSecureInfoType == LocalSecureInfoType.note;
  }

  NoteInfo? toNoteInfo() {
    if (!isNoteInfo()) return null;

    return NoteInfo(
        name: title,
        noteImageUrl: imageUrl,
        note: note,
        createdTime: createdTime,
        updatedTime: updatedTime);
  }
}

extension LoginInfoToLocalSecureInfoParsing on LoginInfo {
  LocalSecureInfo toLocalSecureInfo() {
    return LocalSecureInfo(
      localSecureInfoType: LocalSecureInfoType.login,
      id: id,
      title: title,
      imageUrl: webImageUrl,
      createdTime: createdTime,
      updatedTime: updatedTime,
      note: note,
      webUrl: webUrl,
      loginAccount: account,
      password: password,
    );
  }
}

extension BankInfoToLocalSecureInfoParsing on BankInfo {
  LocalSecureInfo toLocalSecureInfo() {
    return LocalSecureInfo(
      localSecureInfoType: LocalSecureInfoType.bank,
      id: id,
      title: title,
      imageUrl: bankImageUrl,
      createdTime: createdTime,
      updatedTime: updatedTime,
      note: note,
      bankCode: bankCode,
      holderName: holderName,
      bankType: type,
      bankAccount: account,
      cardPassword: cardPassword,
      cardNumber: cardNumber,
      creditCardType: creditCardType ?? CreditCardType.unKnown,
      expirationDate: expirationDate,
      cvv: cvv,
    );
  }
}

extension NoteInfoToLocalSecureInfoParsing on NoteInfo {
  LocalSecureInfo toLocalSecureInfo() {
    return LocalSecureInfo(
      localSecureInfoType: LocalSecureInfoType.note,
      id: id,
      title: title,
      imageUrl: noteImageUrl,
      createdTime: createdTime,
      updatedTime: updatedTime,
      note: note,
    );
  }
}
