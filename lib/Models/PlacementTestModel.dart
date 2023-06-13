import 'dart:convert';

import 'QuestionModel.dart';

PlacementTestModel placementTestModelFromJson(String str) =>
    PlacementTestModel.fromJson(json.decode(str));

String placementTestModelToJson(PlacementTestModel data) =>
    json.encode(data.toJson());

class PlacementTestModel {
  late int id;
  late DateTime? startDate;
  late DateTime endDate;
  late QuestionsModel questions;
  late DateTime createdAt;
  late DateTime updatedAt;

  PlacementTestModel();

  PlacementTestModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    startDate = DateTime.parse(json["start_date"]);
    endDate = DateTime.parse(json["end_date"]);
    questions = QuestionsModel.fromJson(json["questions"]);
    if (json["created_at"] != null)
      createdAt = DateTime.parse(json["created_at"]);
    if (json["updated_at"] != null)
      updatedAt = DateTime.parse(json["updated_at"]);
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "end_date":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "questions": questions.toJson(),
      };
}
