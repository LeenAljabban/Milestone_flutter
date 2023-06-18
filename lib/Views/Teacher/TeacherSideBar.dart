import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/TeacherControllers/TeacherProfileController.dart';
import '../../global.dart';

class TeacherSideBar extends StatelessWidget {
  TeacherProfileController controller = Get.put(TeacherProfileController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              controller.user.firstName + ' ' + controller.user.lastName,
              style: TextStyle(
                // fontFamily: 'segoepr',
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              controller.user.email,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  imageurl + controller.user.image,
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xff2D527E),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'What is Milstone',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            onTap: () {
              Get.toNamed('/AboutUs');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.ad_units,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'Advertisment',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.home_repair_service,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'Our Services',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            onTap: () {
              Get.toNamed('/OurServices');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_support,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'Contact Us',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            onTap: () {
              Get.toNamed('/ContactUs');
            },
          ),
          ListTile(
            // trailing: InkWell(
            //   onTap: () {
            //     Get.changeTheme(
            //         Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            //   },
            //   child: Icon(
            //     Get.isDarkMode ? Icons.dark_mode : Icons.dark_mode_outlined,
            //   ),
            // ),
            // Switch.adaptive(
            //     value: ,
            //     onChanged: (d) {
            //
            //     }),
            leading: Icon(
              Icons.dark_mode,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'Dark Mode',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'Log out',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            onTap: () {
              clearToken();
              Get.offAllNamed('/WhoAreYou');
            },
          ),
        ],
      ),
    );
  }
}
