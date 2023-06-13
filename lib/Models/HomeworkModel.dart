import 'dart:convert';

HomeworkModel homeworkModelFromJson(String str) =>
    HomeworkModel.fromJson(json.decode(str));

String homeworkModelToJson(HomeworkModel data) => json.encode(data.toJson());

class HomeworkModel {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  String? text;
  String? file;
  int courseId;

  HomeworkModel({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.text,
    required this.file,
    required this.courseId,
  });

  factory HomeworkModel.fromJson(Map<String, dynamic> json) => HomeworkModel(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        text: json["text"],
        file: json["file"],
        courseId: json["course_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "text": text,
        "file": file,
        "course_id": courseId,
      };
}
