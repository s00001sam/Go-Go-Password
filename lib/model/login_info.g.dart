// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginInfo _$LoginInfoFromJson(Map<String, dynamic> json) => LoginInfo(
      name: json['name'] as String,
      webUrl: json['webUrl'] as String,
      webImageUrl: json['webImageUrl'] as String,
      account: json['account'] as String,
      password: json['password'] as String,
      note: json['note'] as String,
      publishTime: json['publishTime'] as String,
    )
      ..title = json['title'] as String
      ..description = json['description'] as String
      ..imageUrl = json['imageUrl'] as String;

Map<String, dynamic> _$LoginInfoToJson(LoginInfo instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'webUrl': instance.webUrl,
      'webImageUrl': instance.webImageUrl,
      'account': instance.account,
      'password': instance.password,
      'note': instance.note,
      'publishTime': instance.publishTime,
    };
