import 'dart:convert';

List<AttendedModel> attendedModelFromJson(String str) =>
    List<AttendedModel>.from(
        json.decode(str).map((x) => AttendedModel.fromJson(x)));

String attendedModelToJson(List<AttendedModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AttendedModel {
  DateTime date;
  List<Attendance> attendance;

  AttendedModel({
    required this.date,
    required this.attendance,
  });

  factory AttendedModel.fromJson(Map<String, dynamic> json) => AttendedModel(
        date: DateTime.parse(json["date"]),
        attendance: List<Attendance>.from(
            json["attendance"].map((x) => Attendance.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date":
            "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "attendance": List<dynamic>.from(attendance.map((x) => x.toJson())),
      };
}

class Attendance {
  int id;
  String firstName;
  String lastName;

  Attendance({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
      };
}
