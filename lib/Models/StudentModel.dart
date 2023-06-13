// To parse this JSON data, do
//
//     final coursesStudents = coursesStudentsFromJson(jsonString);

import 'dart:convert';

List<CoursesStudents> coursesStudentsFromJson(String str) =>
    List<CoursesStudents>.from(
        json.decode(str).map((x) => CoursesStudents.fromJson(x)));

String coursesStudentsToJson(List<CoursesStudents> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoursesStudents {
  int id;
  String image;
  int userId;
  int countryId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic education;
  User user;

  CoursesStudents({
    required this.id,
    required this.image,
    required this.userId,
    required this.countryId,
    required this.createdAt,
    required this.updatedAt,
    this.education,
    required this.user,
  });

  factory CoursesStudents.fromJson(Map<String, dynamic> json) =>
      CoursesStudents(
        id: json["id"],
        image: json["image"],
        userId: json["user_id"],
        countryId: json["country_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        education: json["education"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "user_id": userId,
        "country_id": countryId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "education": education,
        "user": user.toJson(),
      };
}

class User {
  int id;
  String firstName;
  String lastName;
  String email;
  String username;
  DateTime birth;
  dynamic emailVerifiedAt;
  String phone;
  String gender;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.username,
    required this.birth,
    this.emailVerifiedAt,
    required this.phone,
    required this.gender,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        username: json["username"],
        birth: DateTime.parse(json["birth"]),
        emailVerifiedAt: json["email_verified_at"],
        phone: json["phone"],
        gender: json["gender"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "username": username,
        "birth":
            "${birth.year.toString().padLeft(4, '0')}-${birth.month.toString().padLeft(2, '0')}-${birth.day.toString().padLeft(2, '0')}",
        "email_verified_at": emailVerifiedAt,
        "phone": phone,
        "gender": gender,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
