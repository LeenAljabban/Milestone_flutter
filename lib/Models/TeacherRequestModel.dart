// To parse this JSON data, do
//
//     final teacherRequest = teacherRequestFromJson(jsonString);

import 'dart:convert';

List<TeacherRequest> teacherRequestFromJson(String str) =>
    List<TeacherRequest>.from(
        json.decode(str).map((x) => TeacherRequest.fromJson(x)));

String teacherRequestToJson(List<TeacherRequest> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TeacherRequest {
  int id;
  int employeeId;
  String? reason;
  dynamic file;
  DateTime from;
  dynamic to;
  String type;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic comment;
  Status status;
  dynamic refuseReason;

  TeacherRequest({
    required this.id,
    required this.employeeId,
    this.reason,
    this.file,
    required this.from,
    this.to,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    this.comment,
    required this.status,
    this.refuseReason,
  });

  factory TeacherRequest.fromJson(Map<String, dynamic> json) => TeacherRequest(
        id: json["id"],
        employeeId: json["employee_id"],
        reason: json["reason"],
        file: json["file"],
        from: DateTime.parse(json["from"]),
        to: json["to"],
        type: json["type"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        comment: json["comment"],
        status: statusValues.map[json["status"]]!,
        refuseReason: json["refuse_reason"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "employee_id": employeeId,
        "reason": reason,
        "file": file,
        "from": from.toIso8601String(),
        "to": to,
        "type": type,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "comment": comment,
        "status": statusValues.reverse[status],
        "refuse_reason": refuseReason,
      };
}

enum Status { IN_PROGRESS, ACCEPTED, REFUSED }

final statusValues = EnumValues({
  "In Progress": Status.IN_PROGRESS,
  "Accepted": Status.ACCEPTED,
  "Refused": Status.REFUSED
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
