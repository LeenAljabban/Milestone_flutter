import 'QuestionDataModel.dart';

class QuestionsModel {
  late int currentPage;
  late List<QuestionDataModel> data;
  late String firstPageUrl;
  late int from;
  late int lastPage;
  late String lastPageUrl;
  late String? nextPageUrl;
  late String path;
  late int perPage;
  late dynamic prevPageUrl;
  late int to;
  late int total;

  QuestionsModel();

  QuestionsModel.fromJson(Map<String, dynamic> json) {
    currentPage = json["current_page"];
    data = List<QuestionDataModel>.from(
        json["data"].map((x) => QuestionDataModel.fromJson(x)));
    firstPageUrl = json["first_page_url"];
    from = json["from"];
    if (json["last_page"] != null) lastPage = json["last_page"];
    lastPageUrl = json["last_page_url"];
    nextPageUrl = json["next_page_url"];
    path = json["path"];
    perPage = json["per_page"];
    prevPageUrl = json["prev_page_url"];
    to = json["to"];
    total = json["total"];
  }

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}
