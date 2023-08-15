// To parse this JSON data, do
//
//     final courseModel = courseModelFromJson(jsonString);

import 'dart:convert';

import 'DayModel.dart';

CourseModel courseModelFromJson(String str) =>
    CourseModel.fromJson(json.decode(str));

String courseModelToJson(CourseModel data) => json.encode(data.toJson());

class CourseModel {
  late int id;
  late String startHour;
  late String endHour;
  late DateTime startDay;
  late DateTime endDay;
  late List<Day> days;
  late String qrCode;
  late int classId;
  late int courseNameId;
  late DateTime createdAt;
  late DateTime updatedAt;
  late String course_name;

  CourseModel();

  CourseModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] != null) id = json["id"];
    if (json["start_hour"] != null) startHour = json["start_hour"];
    if (json["end_hour"] != null) endHour = json["end_hour"];
    if (json["start_day"] != null) startDay = DateTime.parse(json["start_day"]);
    if (json["end_day"] != null) endDay = DateTime.parse(json["end_day"]);

    if (json["qr_code"] != null) qrCode = json["qr_code"];
    if (json["class_id"] != null) classId = json["class_id"];
    if (json["course_name_id"] != null) courseNameId = json["course_name_id"];
    if (json["created_at"] != null) {
      createdAt = DateTime.parse(json["created_at"]);
    }
    if (json["updated_at"] != null) {
      updatedAt = DateTime.parse(json["updated_at"]);
    }
    if (json["days"] != null) {
      days = List<Day>.from(json["days"].map((x) => Day.fromJson(x)));
    }
    if (json["course_name"] != null) course_name = json["course_name"];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "start_hour": startHour,
        "end_hour": endHour,
        "start_day":
            "${startDay.year.toString().padLeft(4, '0')}-${startDay.month.toString().padLeft(2, '0')}-${startDay.day.toString().padLeft(2, '0')}",
        "end_day":
            "${endDay.year.toString().padLeft(4, '0')}-${endDay.month.toString().padLeft(2, '0')}-${endDay.day.toString().padLeft(2, '0')}",
        "days": days,
        "qr_code": qrCode,
        "class_id": classId,
        "course_name_id": courseNameId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
