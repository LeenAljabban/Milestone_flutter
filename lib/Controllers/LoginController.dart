import 'dart:convert';
import 'dart:developer';
import 'package:first/Models/UserModel.dart';
import 'package:first/Services/LoginService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import 'dart:convert';
import 'dart:io';

// import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class LoginController extends GetxController {
  Color blue = Color(0xff2D527E);
  late TextEditingController usernameController, passwordController;

  @override
  void onInit() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  // void onEvent(PusherEvent event) {
  //   log("onEvent: $event");
  // }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  CallLogin() async {
    try {
      var data = await LoginService.Login(
          'auth/login', usernameController.text, passwordController.text);
      if (data != null) {
        UserModel user = data;
        // final pusherClient = PusherClient(
        //   '45f5f505af3480063b2d',
        //   PusherOptions(cluster: 'mt1'),
        // );
        // pusherClient.connect();
        // final channel = pusherClient.subscribe('notification');
        // channel.bind('notification-received', (event) {
        //   // Handle incoming event
        //   final data1 = event?.data;
        //   // final notificationMessage = data['message'];
        //   // Handle incoming notification message here.
        //   print('Received new notification: $data1');
        //   print('Finallllllllyyyyyyyyyyyy');
        // });
        print('/////////////////////////////////////////////////////');
        WebSocket webSocket = await WebSocket.connect(
            "ws://192.168.1.106:6001/app/45f5f505af3480063b2d");
        Map<String, dynamic> subscribeEvent = {
          "event": "pusher:subscribe",
          "data": {
            "auth": "",
            "channel": "notification",
          },
        };
        String subscribeEventJson = jsonEncode(subscribeEvent);
        webSocket.add(subscribeEventJson);

        webSocket.listen((message) {
          print(message);
          final data = jsonDecode(message);
          print(data);
          if (data['event'] == 'pusher_internal:subscription_succeeded') {
            print('Successfully subscribed to the "notification" channel');
          } else if (data['event'] == 'notification-recevied') {
            FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
                FlutterLocalNotificationsPlugin();
            var initializationSettingsAndroid =
                AndroidInitializationSettings('@mipmap/ic_launcher');
            // var initializationSettingsIOS = IOSInitializationSettings();
            var initializationSettings = InitializationSettings(
              android: initializationSettingsAndroid,
            );
            flutterLocalNotificationsPlugin.initialize(initializationSettings);
            var androidPlatformChannelSpecifics =
                AndroidNotificationDetails('channel_id', 'notification',
                    // 'channel_description',
                    importance: Importance.max,
                    priority: Priority.high);
            // var iOSPlatformChannelSpecifics = IOSNotificationDetails();
            var platformChannelSpecifics = NotificationDetails(
              android: androidPlatformChannelSpecifics,
            );
            flutterLocalNotificationsPlugin.show(
                0, 'New Notification', 'i recive it', platformChannelSpecifics);
          }
        });
        print('/////////////////////////////////////////////////////');
        // PusherChannelsFlutter pusher = PusherChannelsFlutter.getInstance();
        //
        // dynamic onAuthorizer(
        //     String channelName, String socketId, dynamic options) {
        //   return {
        //     "auth": "foo:bar",
        //     "channel_data": '{"user_id": ${user.id}',
        //     "shared_secret": "foobar"
        //   };
        // }
        //
        // await pusher.init(
        //     apiKey: '2aa917b7d49f5b97773a',
        //     cluster: 'us2',
        //     onAuthorizer: onAuthorizer);
        // await pusher.connect();
        //
        // await pusher.subscribe(
        //     channelName: "notification",
        //     onEvent: (event) {
        //       if (event.eventName == "new_advertisement") {
        //         // String message = event.data;
        //         // handleNewAdvertisementNotification(message);
        //
        //         // Handle the new advertisement notification here
        //       }
        //       onEvent(event);
        //     });

        // Navigate to appropriate screen based on user role
        if (user.roles.contains('Teacher'))
          Get.offAllNamed("/BottomNavigationTeacher");
        else if (user.roles.contains('Student'))
          Get.offAllNamed("/BottomNavigation");
      } else {
        Get.snackbar('Try again', 'your email or your password is wrong',
            snackPosition: SnackPosition.BOTTOM);
      }
    } finally {}
  }
}
