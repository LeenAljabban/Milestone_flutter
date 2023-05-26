import 'dart:convert';

DayModel dayModelFromJson(String str) => DayModel.fromJson(json.decode(str));

String dayModelToJson(DayModel data) => json.encode(data.toJson());

class DayModel {
  List<Day> days;

  DayModel({
    required this.days,
  });

  factory DayModel.fromJson(Map<String, dynamic> json) =>
      DayModel(
        days: List<Day>.from(json["days"].map((x) => Day.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "days": List<dynamic>.from(days.map((x) => x.toJson())),
      };
}

class Day {
  int id;
  String name;
  int isVacation;
  dynamic? createdAt;
  dynamic? updatedAt;


  Day({
    required this.id,
    required this.name,
    required this.isVacation,
    this.createdAt,
    this.updatedAt,

  });

  factory Day.fromJson(Map<String, dynamic> json) =>
      Day(
        id: json["id"],
        name: json["name"],
        isVacation: json["is_vacation"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],

      );

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "name": name,
        "is_vacation": isVacation,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
