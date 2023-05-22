class AnswerModel {
  int id;
  String name;
  int isTrue;
  int questionId;
  dynamic createdAt;
  dynamic updatedAt;

  AnswerModel({
    required this.id,
    required this.name,
    required this.isTrue,
    required this.questionId,
    this.createdAt,
    this.updatedAt,
  });

  factory AnswerModel.fromJson(Map<String, dynamic> json) => AnswerModel(
        id: json["id"],
        name: json["name"],
        isTrue: json["is_true"],
        questionId: json["question_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "is_true": isTrue,
        "question_id": questionId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
