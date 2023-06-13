import 'package:first/Models/UserModel.dart';
import 'package:first/Services/LoginService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  Color blue = Color(0xff2D527E);
  late TextEditingController usernameController, passwordController;

  @override
  void onInit() {
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

  CallLogin() async {
    try {
      var data = await LoginService.Login(
          'auth/login', usernameController.text, passwordController.text);
      if (data != null) {
        UserModel user = data;
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
