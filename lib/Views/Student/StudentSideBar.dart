import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/StudentsControllers/StudentProfileController.dart';
import '../../global.dart';

class StudentSideBar extends StatelessWidget {
  StudentProfileController controller = Get.put(StudentProfileController());

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
                child: Image(
                  image: NetworkImage(
                    imageurl + controller.user.image,
                  ),
                  // fit: BoxFit.cover,
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
            onTap: () {
              Get.toNamed('/OurTeachers');
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
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50.0),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff2D527E),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ),
                      onPressed: () {
                        controller.pickfile();
                        controller.CallUploadCv();
                      },
                      child: Text(
                        'upload cv',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'segoepr',
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Color(0xff2D527E),
            ),
            title: const Text(
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
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Color(0xff2D527E),
            ),
            title: const Text(
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
