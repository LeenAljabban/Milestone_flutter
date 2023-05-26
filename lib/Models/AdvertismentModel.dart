import 'dart:convert';

List<AdvertismentModel> advertismentModelFromJson(String str) =>
    List<AdvertismentModel>.from(
        json.decode(str).map((x) => AdvertismentModel.fromJson(x)));

String advertismentModelToJson(AdvertismentModel data) =>
    json.encode(data.toJson());

class AdvertismentModel {
  late int id;
  late String title;
  late String image;
  late dynamic description;
  late String tips;
  late int isShown;
  late int advertismentTypeId;
  late dynamic publishData;
  late int course_id;

  AdvertismentModel();

  AdvertismentModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    image = json["image"];
    description = json["description"];
    tips = json["tips"];
    isShown = json["is_shown"];
    advertismentTypeId = json["advertisment_type_id"];
    publishData = json["publish_data"];
    course_id = json['course_id'];
  }

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "title": title,
        "image": image,
        "description": description,
        "tips": tips,
        "is_shown": isShown,
        "advertisment_type_id": advertismentTypeId,
        "publish_data": publishData,
        "course_id": course_id,

      };
}
