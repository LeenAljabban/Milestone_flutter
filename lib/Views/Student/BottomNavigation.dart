import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:first/Controllers/StudentsControllers/BottomNavigationController.dart';
import 'package:first/Views/Student/QrScanner.dart';
import 'package:first/Views/Student/StudentProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Marks.dart';
import 'Notifications.dart';
import 'StudentHome.dart';

class BottomNavigation extends GetView<BottomNavigationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              StudentHome(),
              Marks(),
              QrScanner(),
              Notifications(),
              StudentProfile(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        onTap: (index) {
          controller.changeTabIndex(index);
        },
        height: 70,
        style: TabStyle.react,
        activeColor: Color(0xff2D527E),
        backgroundColor: Color(0xff2D527E),
        initialActiveIndex: 0,
        items: [
          TabItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: 'Home'),
          TabItem(
              icon: Icon(
                Icons.margin,
                color: Colors.white,
              ),
              title: 'Marks'),
          TabItem(
              icon: Icon(
                Icons.qr_code,
                color: Colors.white,
              ),
              title: 'Qr Scan'),
          TabItem(
              icon: Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
              title: 'Notifi'),
          TabItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: 'profile'),
        ],
      ),
    );
  }
}
