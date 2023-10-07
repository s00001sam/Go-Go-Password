import 'package:json_annotation/json_annotation.dart';

part 'base_secure_info.g.dart';

/// 所有加密種類的基礎型別
@JsonSerializable()
class BaseSecureInfo {
  String id;
  String title; // 標題
  String description; // 內容
  String imageUrl; // 照片
  int createdTime; // 創建時間
  int updatedTime; // 更新時間

  factory BaseSecureInfo.fromJson(Map<String, dynamic> json) =>
      _$BaseSecureInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BaseSecureInfoToJson(this);

//<editor-fold desc="Data Methods">
  BaseSecureInfo({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.createdTime,
    required this.updatedTime,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BaseSecureInfo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          description == other.description &&
          imageUrl == other.imageUrl &&
          createdTime == other.createdTime &&
          updatedTime == other.updatedTime);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      imageUrl.hashCode ^
      createdTime.hashCode ^
      updatedTime.hashCode;

  @override
  String toString() {
    return 'BaseSecureInfo{ id: $id, title: $title, description: $description, imageUrl: $imageUrl, createdTime: $createdTime, updatedTime: $updatedTime,}';
  }

  BaseSecureInfo copyWith({
    String? id,
    String? title,
    String? description,
    String? imageUrl,
    int? createdTime,
    int? updatedTime,
  }) {
    return BaseSecureInfo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'createdTime': createdTime,
      'updatedTime': updatedTime,
    };
  }

  factory BaseSecureInfo.fromMap(Map<String, dynamic> map) {
    return BaseSecureInfo(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
      createdTime: map['createdTime'] as int,
      updatedTime: map['updatedTime'] as int,
    );
  }

//</editor-fold>
}
