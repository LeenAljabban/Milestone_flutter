// To parse this JSON data, do
//
//     final courseLevelsModel = courseLevelsModelFromJson(jsonString);

import 'dart:convert';

List<CourseLevelsModel> courseLevelsModelFromJson(String str) =>
    List<CourseLevelsModel>.from(
        json.decode(str).map((x) => CourseLevelsModel.fromJson(x)));

String courseLevelsModelToJson(List<CourseLevelsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CourseLevelsModel {
  late int id;
  late String name;
  dynamic createdAt;
  dynamic updatedAt;

  CourseLevelsModel();

  CourseLevelsModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    if (json["created_at"] != null) createdAt = json["created_at"];
    if (json["updated_at"] != null) updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
