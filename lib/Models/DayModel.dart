import 'dart:convert';

DayModel dayModelFromJson(String str) => DayModel.fromJson(json.decode(str));

String dayModelToJson(DayModel data) => json.encode(data.toJson());

class DayModel {
  List<Day> days;

  DayModel({
    required this.days,
  });

  factory DayModel.fromJson(Map<String, dynamic> json) => DayModel(
        days: List<Day>.from(json["days"].map((x) => Day.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "days": List<dynamic>.from(days.map((x) => x.toJson())),
      };
}

class Day {
  late int id;
  late String name;
  late int isVacation;
  late dynamic? createdAt;
  late dynamic? updatedAt;

  Day();

  Day.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    isVacation = json["is_vacation"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "is_vacation": isVacation,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
