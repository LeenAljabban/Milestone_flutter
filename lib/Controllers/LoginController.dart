import 'package:first/Models/UserModel.dart';
import 'package:first/Services/LoginService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../global.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  Color blue = const Color(0xff2D527E);
  late TextEditingController usernameController, passwordController;
  RxBool send = true.obs;
  String? fcm;

  @override
  void onInit() {
    FirebaseMessaging.instance.getToken().then((value) {
      fcm = value;

      print(fcm);
    });
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validateEmail(String value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }

    if (!GetUtils.isEmail(value)) {
      return 'Enter valid Email';
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    if (value.length < 6) return 'Password must be 6 characters at least';
    return null;
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      CallLogin();
    }
  }

  CallLogin() async {
    try {
      send(false);
      var data = await LoginService.Login(
          'auth/login', usernameController.text, passwordController.text, fcm);
      if (data != null) {
        UserModel user = data;


        // Navigate to appropriate screen based on user role
        if (user.roles.contains('Teacher')) {
          Get.offAllNamed("/BottomNavigationTeacher");
          await saveToSharedPreferences('token', user.token, 'Teacher');
        } else if (user.roles.contains('Student')) {
          Get.offAllNamed("/BottomNavigation");
          await saveToSharedPreferences('token', user.token, 'Student');
        }
      } else {
        Get.snackbar('Try again', 'your email or your password is wrong',
            snackPosition: SnackPosition.BOTTOM);
        send(true);
      }
    } finally {}
  }
}
