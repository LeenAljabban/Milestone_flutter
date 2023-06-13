// To parse this JSON data, do
//
//     final notification = notificationFromJson(jsonString);

import 'dart:convert';

List<NotificationModel> notificationFromJson(String str) =>
    List<NotificationModel>.from(
        json.decode(str).map((x) => NotificationModel.fromJson(x)));

String notificationToJson(List<NotificationModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationModel {
  int id;
  Type type;
  NotifiableType notifiableType;
  int notifiableId;
  String data;
  dynamic readAt;
  DateTime createdAt;
  DateTime updatedAt;

  NotificationModel({
    required this.id,
    required this.type,
    required this.notifiableType,
    required this.notifiableId,
    required this.data,
    this.readAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        id: json["id"],
        type: typeValues.map[json["type"]]!,
        notifiableType: notifiableTypeValues.map[json["notifiable_type"]]!,
        notifiableId: json["notifiable_id"],
        data: json["data"],
        readAt: json["read_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": typeValues.reverse[type],
        "notifiable_type": notifiableTypeValues.reverse[notifiableType],
        "notifiable_id": notifiableId,
        "data": data,
        "read_at": readAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

enum NotifiableType { APP_MODELS_USER }

final notifiableTypeValues =
    EnumValues({"App\\Models\\User": NotifiableType.APP_MODELS_USER});

enum Type { APP_NOTIFICATIONS_WEB_SOCKET_SUCCESS_NOTIFICATION }

final typeValues = EnumValues({
  "App\\Notifications\\WebSocketSuccessNotification":
      Type.APP_NOTIFICATIONS_WEB_SOCKET_SUCCESS_NOTIFICATION
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
