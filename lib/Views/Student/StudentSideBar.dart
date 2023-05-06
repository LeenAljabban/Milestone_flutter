import 'package:first/Views/AboutUs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Rama Aljabban',
              style: TextStyle(
                // fontFamily: 'segoepr',
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'Rama-jabban@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'Images/roro.png',
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
              Icons.people_alt_rounded,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'Our Teachers',
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
          ExpansionTile(
            title: Text(
              'Languages',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            leading: Icon(
              Icons.language,
              color: Color(0xff2D527E),
            ),
            childrenPadding: EdgeInsets.only(left: 60),
            children: [
              ListTile(
                title: Text(
                  'Arabic',
                  style: TextStyle(
                    fontFamily: 'segoepr',
                    color: Color(0xff2D527E),
                  ),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  'English',
                  style: TextStyle(
                    fontFamily: 'segoepr',
                    color: Color(0xff2D527E),
                  ),
                ),
                onTap: () {},
              ),
            ],
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
