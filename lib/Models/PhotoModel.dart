import 'dart:convert';

List<PhotoModel> PhotoModelFromJson(String str) =>
    List<PhotoModel>.from(json.decode(str).map((x) => PhotoModel.fromJson(x)));

String PhotoModelToJson(List<PhotoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PhotoModel {
  int id;
  String filePath;
  DateTime publishDate;
  int isAppear;
  DateTime createdAt;
  DateTime updatedAt;

  PhotoModel({
    required this.id,
    required this.filePath,
    required this.publishDate,
    required this.isAppear,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PhotoModel.fromJson(Map<String, dynamic> json) => PhotoModel(
        id: json["id"],
        filePath: json["image"],
        publishDate: DateTime.parse(json["published_at"]),
        isAppear: json["is_show"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "file_path": filePath,
        "publish_date":
            "${publishDate.year.toString().padLeft(4, '0')}-${publishDate.month.toString().padLeft(2, '0')}-${publishDate.day.toString().padLeft(2, '0')}",
        "is_appear": isAppear,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
