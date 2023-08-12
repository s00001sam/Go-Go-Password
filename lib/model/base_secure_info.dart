import 'package:json_annotation/json_annotation.dart';

part 'base_secure_info.g.dart';

/// 所有加密種類的基礎型別
@JsonSerializable()
class BaseSecureInfo {
  String id;
  String title; // 標題
  String description; // 內容
  int publishTime; // 上傳時間
  String imageUrl; // 照片

  factory BaseSecureInfo.fromJson(Map<String, dynamic> json) =>
      _$BaseSecureInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BaseSecureInfoToJson(this);

//<editor-fold desc="Data Methods">
  BaseSecureInfo({
    required this.id,
    required this.title,
    required this.description,
    required this.publishTime,
    required this.imageUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BaseSecureInfo &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          description == other.description &&
          publishTime == other.publishTime &&
          imageUrl == other.imageUrl);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      publishTime.hashCode ^
      imageUrl.hashCode;

  @override
  String toString() {
    return 'BaseSecureInfo{ id: $id, title: $title, description: $description, publishTime: $publishTime, imageUrl: $imageUrl,}';
  }

  BaseSecureInfo copy({
    String? id,
    String? title,
    String? description,
    int? publishTime,
    String? imageUrl,
  }) {
    return BaseSecureInfo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      publishTime: publishTime ?? this.publishTime,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'description': this.description,
      'publishTime': this.publishTime,
      'imageUrl': this.imageUrl,
    };
  }

  factory BaseSecureInfo.fromMap(Map<String, dynamic> map) {
    return BaseSecureInfo(
      id: map['id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      publishTime: map['publishTime'] as int,
      imageUrl: map['imageUrl'] as String,
    );
  }

//</editor-fold>
}
