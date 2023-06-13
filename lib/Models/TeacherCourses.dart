// To parse this JSON data, do
//
//     final teacherCourses = teacherCoursesFromJson(jsonString);

import 'dart:convert';

List<TeacherCourses> teacherCoursesFromJson(String str) =>
    List<TeacherCourses>.from(
        json.decode(str).map((x) => TeacherCourses.fromJson(x)));

String teacherCoursesToJson(List<TeacherCourses> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TeacherCourses {
  int id;
  DateTime startDay;
  DateTime endDay;
  List<Day> days;
  String qrCode;
  int classId;
  int courseNameId;
  DateTime createdAt;
  DateTime updatedAt;
  int teacherId;
  int periodId;
  String name;
  String startHour;
  String endHour;
  String? className;

  TeacherCourses({
    required this.id,
    required this.startDay,
    required this.endDay,
    required this.days,
    required this.qrCode,
    required this.classId,
    required this.courseNameId,
    required this.createdAt,
    required this.updatedAt,
    required this.teacherId,
    required this.periodId,
    required this.name,
    required this.startHour,
    required this.endHour,
    this.className,
  });

  factory TeacherCourses.fromJson(Map<String, dynamic> json) => TeacherCourses(
        id: json["id"],
        startDay: DateTime.parse(json["start_day"]),
        endDay: DateTime.parse(json["end_day"]),
        days: List<Day>.from(json["days"].map((x) => Day.fromJson(x))),
        qrCode: json["qr_code"],
        classId: json["class_id"],
        courseNameId: json["course_name_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        teacherId: json["teacher_id"],
        periodId: json["period_id"],
        name: json["name"],
        startHour: json["start_hour"],
        endHour: json["end_hour"],
        className: json["class_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "start_day":
            "${startDay.year.toString().padLeft(4, '0')}-${startDay.month.toString().padLeft(2, '0')}-${startDay.day.toString().padLeft(2, '0')}",
        "end_day":
            "${endDay.year.toString().padLeft(4, '0')}-${endDay.month.toString().padLeft(2, '0')}-${endDay.day.toString().padLeft(2, '0')}",
        "days": List<dynamic>.from(days.map((x) => x.toJson())),
        "qr_code": qrCode,
        "class_id": classId,
        "course_name_id": courseNameId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "teacher_id": teacherId,
        "period_id": periodId,
        "name": name,
        "start_hour": startHour,
        "end_hour": endHour,
        "class_name": className,
      };
}

class Day {
  int id;
  String name;
  int isVacation;
  dynamic createdAt;
  dynamic updatedAt;

  Day({
    required this.id,
    required this.name,
    required this.isVacation,
    this.createdAt,
    this.updatedAt,
  });

  factory Day.fromJson(Map<String, dynamic> json) => Day(
        id: json["id"],
        name: json["name"],
        isVacation: json["is_vacation"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "is_vacation": isVacation,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
