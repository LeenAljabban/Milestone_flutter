import 'dart:convert';

GetInfoModel GetInfoModelFromJson(String str) =>
    GetInfoModel.fromJson(json.decode(str));

String GetInfoModelToJson(GetInfoModel data) => json.encode(data.toJson());

class GetInfoModel {
  int id;
  String whoWeAre;
  String contactUs;
  String services;
  DateTime createdAt;
  DateTime updatedAt;

  GetInfoModel({
    required this.id,
    required this.whoWeAre,
    required this.contactUs,
    required this.services,
    required this.createdAt,
    required this.updatedAt,
  });

  factory GetInfoModel.fromJson(Map<String, dynamic> json) => GetInfoModel(
        id: json["id"],
        whoWeAre: json["who_we_are"],
        contactUs: json["contact_us"],
        services: json["services"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "who_we_are": whoWeAre,
        "contact_us": contactUs,
        "services": services,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
