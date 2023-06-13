import 'dart:convert';

List<MarksModel> marksModelFromJson(String str) =>
    List<MarksModel>.from(json.decode(str).map((x) => MarksModel.fromJson(x)));

String marksModelToJson(List<MarksModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MarksModel {
  int id;
  int total;
  String status;
  int courseId;
  int studentId;
  DateTime createdAt;
  DateTime updatedAt;
  String courseName;
  Mark mark;

  MarksModel({
    required this.id,
    required this.total,
    required this.status,
    required this.courseId,
    required this.studentId,
    required this.createdAt,
    required this.updatedAt,
    required this.courseName,
    required this.mark,
  });

  factory MarksModel.fromJson(Map<String, dynamic> json) => MarksModel(
        id: json["id"],
        total: json["total"],
        status: json["status"],
        courseId: json["course_id"],
        studentId: json["student_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        courseName: json["course_name"],
        mark: Mark.fromJson(json["mark"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "total": total,
        "status": status,
        "course_id": courseId,
        "student_id": studentId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "course_name": courseName,
        "mark": mark.toJson(),
      };
}

class Mark {
  int id;
  DateTime createdAt;
  DateTime updatedAt;
  int med;
  int presentation;
  int oral;
  int markFinal;
  int homework;
  int courseResultId;

  Mark({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.med,
    required this.presentation,
    required this.oral,
    required this.markFinal,
    required this.homework,
    required this.courseResultId,
  });

  factory Mark.fromJson(Map<String, dynamic> json) => Mark(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        med: json["med"],
        presentation: json["presentation"],
        oral: json["oral"],
        markFinal: json["final"],
        homework: json["homework"],
        courseResultId: json["course_result_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "med": med,
        "presentation": presentation,
        "oral": oral,
        "final": markFinal,
        "homework": homework,
        "course_result_id": courseResultId,
      };
}
