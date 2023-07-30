// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_secure_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseSecureInfo _$BaseSecureInfoFromJson(Map<String, dynamic> json) =>
    BaseSecureInfo(
      title: json['title'] as String,
      description: json['description'] as String,
      publishTime: json['publishTime'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$BaseSecureInfoToJson(BaseSecureInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'publishTime': instance.publishTime,
      'imageUrl': instance.imageUrl,
    };
