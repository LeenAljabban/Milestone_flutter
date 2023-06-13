import 'dart:convert';

import 'package:first/Models/CourseModel.dart';

AdvertismentModel advertismentModelFromJson(String str) =>
    AdvertismentModel.fromJson(json.decode(str));

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
  late CourseModel course;

  AdvertismentModel();

  AdvertismentModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json["title"];
    image = json["image"];
    description = json["description"];
    if (json["tips"] != null) tips = json["tips"];
    isShown = json["is_shown"];
    advertismentTypeId = json["advertisment_type_id"];
    publishData = json["publish_data"];
    if (json["course_id"] != null) course_id = json['course_id'];
    if (json["course"] != null) course = CourseModel.fromJson(json["course"]);
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "description": description,
        "tips": tips,
        "is_shown": isShown,
        "advertisment_type_id": advertismentTypeId,
        "publish_data": publishData,
        "course_id": course_id,
        "course": course.toJson(), //
      };
}
