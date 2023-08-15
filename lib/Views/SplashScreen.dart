import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var status = prefs.getBool('isLoggedIn') ?? false;
      var role = prefs.getString('role') ?? '';
      print(status);
      if (status) {
        if (role == 'Teacher') {
          Get.offNamed('/BottomNavigationTeacher');
        } else if (role == 'Student') {
          Get.offNamed('/BottomNavigation');
        } else {
          Get.offNamed('/WhoAreYou');
        }
      } else {
        Get.offNamed('/Login');
      }
    });
    return Scaffold(
      body: Center(
        child: Image(
          height: Get.height * 0.4,
          width: Get.width * 0.4,
          image: AssetImage('Images/img.png'),
        ),
      ),
    );
  }
}
