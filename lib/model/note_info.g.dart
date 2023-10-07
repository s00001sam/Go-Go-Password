// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteInfo _$NoteInfoFromJson(Map<String, dynamic> json) => NoteInfo(
      name: json['name'] as String,
      noteImageUrl: json['noteImageUrl'] as String,
      note: json['note'] as String,
      createdTime: json['createdTime'] as int,
      updatedTime: json['updatedTime'] as int,
    )
      ..id = json['id'] as String
      ..title = json['title'] as String
      ..description = json['description'] as String
      ..imageUrl = json['imageUrl'] as String;

Map<String, dynamic> _$NoteInfoToJson(NoteInfo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
      'noteImageUrl': instance.noteImageUrl,
      'note': instance.note,
      'createdTime': instance.createdTime,
      'updatedTime': instance.updatedTime,
    };
