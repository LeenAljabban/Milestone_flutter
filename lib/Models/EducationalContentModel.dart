// To parse this JSON data, do
//
//     final educationalContentModel = educationalContentModelFromJson(jsonString);

import 'dart:convert';

List<EducationalContentModel> educationalContentModelFromJson(String str) =>
    List<EducationalContentModel>.from(
        json.decode(str).map((x) => EducationalContentModel.fromJson(x)));

String educationalContentModelToJson(List<EducationalContentModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class EducationalContentModel {
  int id;
  String file;
  int fileTypesId;
  DateTime createdAt;
  DateTime updatedAt;
  int courseId;

  EducationalContentModel({
    required this.id,
    required this.file,
    required this.fileTypesId,
    required this.createdAt,
    required this.updatedAt,
    required this.courseId,
  });

  factory EducationalContentModel.fromJson(Map<String, dynamic> json) =>
      EducationalContentModel(
        id: json["id"],
        file: json["file"],
        fileTypesId: json["file_types_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        courseId: json["course_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "file": file,
        "file_types_id": fileTypesId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "course_id": courseId,
      };
}
