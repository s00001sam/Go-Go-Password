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
  int publishTime;

  factory LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginInfoToJson(this);

//<editor-fold desc="Data Methods">
  LoginInfo({
    required this.name,
    required this.webUrl,
    required this.webImageUrl,
    required this.account,
    required this.password,
    required this.note,
    required this.publishTime,
  }) : super(
          id: publishTime.toString(),
          title: name,
          description: account,
          publishTime: publishTime,
          imageUrl: webImageUrl,
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
          publishTime == other.publishTime);

  @override
  int get hashCode =>
      name.hashCode ^
      webUrl.hashCode ^
      webImageUrl.hashCode ^
      account.hashCode ^
      password.hashCode ^
      note.hashCode ^
      publishTime.hashCode;

  @override
  String toString() {
    return 'LoginInfo{ name: $name, webUrl: $webUrl, webImageUrl: $webImageUrl, account: $account, password: $password, note: $note, publishTime: $publishTime,}';
  }

  LoginInfo copyWith({
    String? name,
    String? webUrl,
    String? webImageUrl,
    String? account,
    String? password,
    String? note,
    int? publishTime,
  }) {
    return LoginInfo(
      name: name ?? this.name,
      webUrl: webUrl ?? this.webUrl,
      webImageUrl: webImageUrl ?? this.webImageUrl,
      account: account ?? this.account,
      password: password ?? this.password,
      note: note ?? this.note,
      publishTime: publishTime ?? this.publishTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'webUrl': this.webUrl,
      'webImageUrl': this.webImageUrl,
      'account': this.account,
      'password': this.password,
      'note': this.note,
      'publishTime': this.publishTime,
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
      publishTime: map['publishTime'] as int,
    );
  }

//</editor-fold>
}
