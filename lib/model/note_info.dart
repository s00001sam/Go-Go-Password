import 'package:gogo_password/model/base_secure_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_info.g.dart';

/// 筆記
@JsonSerializable()
class NoteInfo extends BaseSecureInfo {
  String name;
  String noteImageUrl;
  String note;
  int createdTime;
  int updatedTime;

  factory NoteInfo.fromJson(Map<String, dynamic> json) =>
      _$NoteInfoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NoteInfoToJson(this);

//<editor-fold desc="Data Methods">
  NoteInfo({
    required this.name,
    required this.noteImageUrl,
    required this.note,
    required this.createdTime,
    required this.updatedTime,
  }) : super(
          id: createdTime.toString(),
          title: name,
          description: '',
          imageUrl: noteImageUrl,
          createdTime: createdTime,
          updatedTime: updatedTime,
        );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteInfo &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          noteImageUrl == other.noteImageUrl &&
          note == other.note &&
          createdTime == other.createdTime &&
          updatedTime == other.updatedTime);

  @override
  int get hashCode =>
      name.hashCode ^
      noteImageUrl.hashCode ^
      note.hashCode ^
      createdTime.hashCode ^
      updatedTime.hashCode;

  @override
  String toString() {
    return 'NoteInfo{ name: $name, noteImageUrl: $noteImageUrl, note: $note, createdTime: $createdTime, updatedTime: $updatedTime,}';
  }

  NoteInfo copy({
    String? name,
    String? noteImageUrl,
    String? note,
    int? createdTime,
    int? updatedTime,
  }) {
    return NoteInfo(
      name: name ?? this.name,
      noteImageUrl: noteImageUrl ?? this.noteImageUrl,
      note: note ?? this.note,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'noteImageUrl': noteImageUrl,
      'note': note,
      'createdTime': createdTime,
      'updatedTime': updatedTime,
    };
  }

  factory NoteInfo.fromMap(Map<String, dynamic> map) {
    return NoteInfo(
      name: map['name'] as String,
      noteImageUrl: map['noteImageUrl'] as String,
      note: map['note'] as String,
      createdTime: map['createdTime'] as int,
      updatedTime: map['updatedTime'] as int,
    );
  }

//</editor-fold>
}
