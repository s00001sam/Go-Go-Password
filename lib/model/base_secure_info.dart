import 'package:json_annotation/json_annotation.dart';

part 'base_secure_info.g.dart';

/// 所有加密種類的基礎型別
@JsonSerializable()
class BaseSecureInfo {
  String title; // 標題
  String description; // 內容
  String publishTime; // 上傳時間
  String imageUrl; // 照片

  factory BaseSecureInfo.fromJson(Map<String, dynamic> json) =>
      _$BaseSecureInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BaseSecureInfoToJson(this);

//<editor-fold desc="Data Methods">

  BaseSecureInfo({
    required this.title,
    required this.description,
    required this.publishTime,
    required this.imageUrl,
  });

// 圖片@override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BaseSecureInfo &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          description == other.description &&
          publishTime == other.publishTime &&
          imageUrl == other.imageUrl);

  @override
  int get hashCode =>
      title.hashCode ^
      description.hashCode ^
      publishTime.hashCode ^
      imageUrl.hashCode;

  @override
  String toString() {
    return 'SecureInfo{ title: $title, description: $description, publishTime: $publishTime, imageUrl: $imageUrl,}';
  }

  BaseSecureInfo copy({
    String? title,
    String? description,
    String? publishTime,
    String? imageUrl,
  }) {
    return BaseSecureInfo(
      title: title ?? this.title,
      description: description ?? this.description,
      publishTime: publishTime ?? this.publishTime,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'description': this.description,
      'publishTime': this.publishTime,
      'imageUrl': this.imageUrl,
    };
  }

  factory BaseSecureInfo.fromMap(Map<String, dynamic> map) {
    return BaseSecureInfo(
      title: map['title'] as String,
      description: map['description'] as String,
      publishTime: map['publishTime'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

//</editor-fold>
}
