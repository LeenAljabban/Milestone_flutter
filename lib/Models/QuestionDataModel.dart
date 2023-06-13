// class QuestionModel {
//   final int id, answer;
//   final String question;
//   final List<String> options;
//
//   QuestionModel(
//       {required this.id,
//       required this.question,
//       required this.answer,
//       required this.options});
// }
import 'AnswerModel.dart';

class QuestionDataModel {
  int id;
  String text;
  String level;
  int mark;
  int typeId;
  dynamic? createdAt;
  dynamic? updatedAt;
  List<AnswerModel> answers;

  QuestionDataModel({
    required this.id,
    required this.text,
    required this.level,
    required this.mark,
    required this.typeId,
    this.createdAt,
    this.updatedAt,
    required this.answers,
  });

  factory QuestionDataModel.fromJson(Map<String, dynamic> json) =>
      QuestionDataModel(
        id: json["id"],
        text: json["text"],
        level: json["level"],
        mark: json["mark"],
        typeId: json["type_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        answers: List<AnswerModel>.from(
            json["answers"].map((x) => AnswerModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "text": text,
        "level": level,
        "mark": mark,
        "type_id": typeId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "answers": List<dynamic>.from(answers.map((x) => x.toJson())),
      };
}
