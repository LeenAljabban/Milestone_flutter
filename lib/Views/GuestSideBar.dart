import 'package:first/Views/AboutUs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/GuestControllers/Guestsidebarcontroller.dart';

class GuestSideBar extends StatelessWidget {
  Guestsidebarcontroller controller = new Guestsidebarcontroller();
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
            leading: Icon(
              Icons.upload,
              color: Color(0xff2D527E),
            ),
            title: Text(
              'Upload CV',
              style: TextStyle(
                fontFamily: 'segoepr',
                color: Color(0xff2D527E),
              ),
            ),
            onTap: () {
              controller.pickfile();
              controller.CallUploadCv();
            },
          ),
        ],
      ),
    );
  }
}
