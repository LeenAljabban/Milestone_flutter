import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:first/Views/Teacher/TeacherHome.dart';
import 'package:first/Views/Teacher/TeacherProfile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/TeacherControllers/BottomNavigationTeacherController.dart';
import '../Student/Notifications.dart';
import '../Student/QrScanner.dart';
import 'MyRequests.dart';
import 'TeacherNotification.dart';

class BottomNavigationTeacher
    extends GetView<BottomNavigationTeacherController> {
  const BottomNavigationTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => IndexedStack(
            index: controller.tabIndex.value,
            children: [
              TeacherHome(),
              MyRequests(),
              QrScanner(),
              TeacherNotifications(),
              TeacherProfile(),
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
            title: 'Home',
            fontFamily: 'segoepr',
          ),
          TabItem(
            icon: Icon(
              Icons.margin,
              color: Colors.white,
            ),
            title: 'Requests',
            fontFamily: 'segoepr',
          ),
          TabItem(
            icon: Icon(
              Icons.qr_code,
              color: Colors.white,
            ),
            title: 'Qr Scan',
            fontFamily: 'segoepr',
          ),
          TabItem(
            icon: SizedBox(
              child: Icon(
                Icons.notifications_active,
                color: Colors.white,
              ),
            ),
            title: 'Notifi',
            fontFamily: 'segoepr',
          ),
          TabItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: 'profile',
            fontFamily: 'segoepr',
          ),
        ],
      ),
    );
  }
}
