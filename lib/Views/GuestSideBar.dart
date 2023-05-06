import 'package:first/Views/AboutUs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GuestSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50.0,
              bottom: 30,
            ),
            child: Container(
              width: 120,
              height: 130,
              child: Image(
                image: AssetImage('Images/img.png'),
              ),
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
            onTap: () {},
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
            onTap: () {},
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
        ],
      ),
    );
  }
}
