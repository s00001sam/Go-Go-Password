// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_secure_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseSecureInfo _$BaseSecureInfoFromJson(Map<String, dynamic> json) =>
    BaseSecureInfo(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      publishTime: json['publishTime'] as int,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$BaseSecureInfoToJson(BaseSecureInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'publishTime': instance.publishTime,
      'imageUrl': instance.imageUrl,
    };
