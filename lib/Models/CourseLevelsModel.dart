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
  int id;
  String name;
  dynamic createdAt;
  dynamic updatedAt;

  CourseLevelsModel({
    required this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
  });

  factory CourseLevelsModel.fromJson(Map<String, dynamic> json) =>
      CourseLevelsModel(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
