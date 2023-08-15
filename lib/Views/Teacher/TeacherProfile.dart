import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import '../../Controllers/TeacherControllers/TeacherProfileController.dart';
import '../../global.dart';

class TeacherProfile extends StatelessWidget {
  TeacherProfileController controller = Get.put(TeacherProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => controller.isLoading.value
            ? Scaffold(
                body: Stack(
                  children: [
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 360,
                        color: Color(0xffAFBBCB),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 340,
                        color: Color(0xff2D527E).withOpacity(0.5),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 320,
                        color: Color(0xff2D527E),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 60.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, top: 220),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        shadowColor: Colors.white,
                        elevation: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff2D527E),
                                blurRadius: 5,
                                offset: Offset(0.5, 1), // Shadow position
                              ),
                              BoxShadow(
                                color: Colors.grey.shade100,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -15.0,
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person,
                                        color: Color(0xff2D527E),
                                        size: 25,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          controller.user.username,
                                          style: TextStyle(
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'segoepr',
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.mail_outline,
                                        color: Color(0xff2D527E),
                                        size: 25,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          controller.user.email,
                                          style: TextStyle(
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'segoepr',
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone_in_talk,
                                        color: Color(0xff2D527E),
                                        size: 25,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          controller.user.phone,
                                          style: TextStyle(
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'segoepr',
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.calendar_month,
                                        color: Color(0xff2D527E),
                                        size: 25,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          controller.user.birthdate,
                                          style: TextStyle(
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'segoepr',
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'segoepr',
                                fontWeight: FontWeight.bold),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff2D527E),

                              radius: 77,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  imageurl + controller.user.image,
                                ),
                                //NetworkImage
                                radius: 72,
                              ), //CircleAvatar
                            ),
                          ), //Cent
                        ],
                      ),
                    ),
                    Positioned(
                      right: 35,
                      top: 40,
                      child: InkWell(
                        onTap: () {
                          Get.toNamed('/EditTeacherProfile',
                              arguments: controller.user);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xff2D527E),
                            ),
                            boxShadow: [
                              BoxShadow(color: Colors.grey, blurRadius: 5),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.edit,
                              color: Color(0xff2D527E),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
      ),
    );
  }
}
