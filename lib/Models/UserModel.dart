// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

UserModel UserModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String UserModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel();

  late int id;
  late String firstName;
  late String lastName;
  late String username;
  late String email;
  late String phone;
  late String birthdate;
  late List<String> roles;
  late String token;
  late String image;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    firstName = json["first_name"];
    lastName = json["last_name"];
    if (json['username'] != null) username = json["username"];
    email = json["email"];
    if (json['phone'] != null) phone = json["phone"];
    if (json['birth'] != null) birthdate = json["birth"];
    if (json['roles'] != null)
      roles = List<String>.from(json["roles"].map((x) => x));
    if (json['token'] != null) token = json["token"];
    if (json['image'] != null) image = json["image"];
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "roles": List<dynamic>.from(roles.map((x) => x)),
        "token": token,
      };
}
