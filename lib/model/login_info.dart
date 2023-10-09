import 'package:gogo_password/model/base_secure_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_info.g.dart';

/// 登入帳密
@JsonSerializable()
class LoginInfo extends BaseSecureInfo {
  String name;
  String webUrl;
  String webImageUrl;
  String account;
  String password;
  String note;
  int createdTime;
  int updatedTime;

  factory LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginInfoToJson(this);

//<editor-fold desc="Data Methods">
  LoginInfo({
    this.name = '',
    this.webUrl = '',
    this.webImageUrl = '',
    this.account = '',
    this.password = '',
    this.note = '',
    this.createdTime = 0,
    this.updatedTime = 0,
  }) : super(
          id: createdTime.toString(),
          title: name,
          description: account,
          imageUrl: webImageUrl,
          createdTime: createdTime,
          updatedTime: updatedTime,
        );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LoginInfo &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          webUrl == other.webUrl &&
          webImageUrl == other.webImageUrl &&
          account == other.account &&
          password == other.password &&
          note == other.note &&
          createdTime == other.createdTime &&
          updatedTime == other.updatedTime);

  @override
  int get hashCode =>
      name.hashCode ^
      webUrl.hashCode ^
      webImageUrl.hashCode ^
      account.hashCode ^
      password.hashCode ^
      note.hashCode ^
      createdTime.hashCode ^
      updatedTime.hashCode;

  @override
  String toString() {
    return 'LoginInfo{ name: $name, webUrl: $webUrl, webImageUrl: $webImageUrl, account: $account, password: $password, note: $note, createdTime: $createdTime, updatedTime: $updatedTime,}';
  }

  LoginInfo copy({
    String? name,
    String? webUrl,
    String? webImageUrl,
    String? account,
    String? password,
    String? note,
    int? createdTime,
    int? updatedTime,
  }) {
    return LoginInfo(
      name: name ?? this.name,
      webUrl: webUrl ?? this.webUrl,
      webImageUrl: webImageUrl ?? this.webImageUrl,
      account: account ?? this.account,
      password: password ?? this.password,
      note: note ?? this.note,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'webUrl': webUrl,
      'webImageUrl': webImageUrl,
      'account': account,
      'password': password,
      'note': note,
      'createdTime': createdTime,
      'updatedTime': updatedTime,
    };
  }

  factory LoginInfo.fromMap(Map<String, dynamic> map) {
    return LoginInfo(
      name: map['name'] as String,
      webUrl: map['webUrl'] as String,
      webImageUrl: map['webImageUrl'] as String,
      account: map['account'] as String,
      password: map['password'] as String,
      note: map['note'] as String,
      createdTime: map['createdTime'] as int,
      updatedTime: map['updatedTime'] as int,
    );
  }

//</editor-fold>
}
