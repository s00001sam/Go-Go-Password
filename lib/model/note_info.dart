import 'package:gogo_password/model/base_secure_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_info.g.dart';

/// 筆記
@JsonSerializable()
class NoteInfo extends BaseSecureInfo {
  String name;
  String noteImageUrl;
  String note;
  String publishTime;
  List<String> recordFiles;

  factory NoteInfo.fromJson(Map<String, dynamic> json) =>
      _$NoteInfoFromJson(json);

  Map<String, dynamic> toJson() => _$NoteInfoToJson(this);

//<editor-fold desc="Data Methods">
  NoteInfo({
    required this.name,
    required this.noteImageUrl,
    required this.note,
    required this.publishTime,
    required this.recordFiles,
  }) : super(
          title: name,
          description: '',
          publishTime: publishTime,
          imageUrl: noteImageUrl,
        );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteInfo &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          noteImageUrl == other.noteImageUrl &&
          note == other.note &&
          publishTime == other.publishTime &&
          recordFiles == other.recordFiles);

  @override
  int get hashCode =>
      name.hashCode ^
      noteImageUrl.hashCode ^
      note.hashCode ^
      publishTime.hashCode ^
      recordFiles.hashCode;

  @override
  String toString() {
    return 'NoteInfo{ name: $name, noteImageUrl: $noteImageUrl, note: $note, publishTime: $publishTime, recordFiles: $recordFiles,}';
  }

  NoteInfo copyWith({
    String? name,
    String? noteImageUrl,
    String? note,
    String? publishTime,
    List<String>? recordFiles,
  }) {
    return NoteInfo(
      name: name ?? this.name,
      noteImageUrl: noteImageUrl ?? this.noteImageUrl,
      note: note ?? this.note,
      publishTime: publishTime ?? this.publishTime,
      recordFiles: recordFiles ?? this.recordFiles,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'noteImageUrl': this.noteImageUrl,
      'note': this.note,
      'publishTime': this.publishTime,
      'recordFiles': this.recordFiles,
    };
  }

  factory NoteInfo.fromMap(Map<String, dynamic> map) {
    return NoteInfo(
      name: map['name'] as String,
      noteImageUrl: map['noteImageUrl'] as String,
      note: map['note'] as String,
      publishTime: map['publishTime'] as String,
      recordFiles: map['recordFiles'] as List<String>,
    );
  }

//</editor-fold>
}
