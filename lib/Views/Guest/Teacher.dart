import 'package:first/Component/IconContainer.dart';
import 'package:first/Component/RoundedAppbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/TeacherController.dart';
import '../../global.dart';

class Teacher extends StatelessWidget {
  TeacherController controller = Get.put(TeacherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            RoundedAppBar(val: 0),
            Positioned(
                bottom: -120,
                right: -100,
                child: ClipOval(
                  child: Container(
                    color: Color(0xff2D527E),
                    height: 400.0, // height of the button
                    width: 420.0, // width of the button
                  ),
                )),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Text('Teacher\'s Profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'segoepr',
                            fontSize: 30)),
                  ),
                  Card(
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
                            color: Colors.grey.shade200,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: -15.0,
                            blurRadius: 15.0,
                          ),
                        ],
                      ),
                      width: 360,
                      height: 450,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: CircleAvatar(
                                backgroundColor: Color(0xff2D527E),
                                radius: 65,
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      imageurl + controller.teacher!.image),
                                  //NetworkImage
                                  radius: 60,
                                ), //CircleAvatar
                              ),
                            ),
                            Text(
                                'Mr- ' +
                                    controller.teacher!.firstName.toString() +
                                    ' ' +
                                    controller.teacher!.lastName.toString(),
                                style: TextStyle(
                                    color: Color(0xff2D527E),
                                    //fontFamily: 'segoepr',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                controller.teacher?.rate.round(),
                                (index) =>
                                    Icon(Icons.star, color: Colors.yellow),
                              ),
                            ),
                            Divider(
                              height: 35,
                              thickness: 2,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Text(controller.teacher!.email,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                                controller.teacher!.experinceYears.toString() +
                                    ' years of experience',
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(height: 20),
                            Text(controller.teacher!.birthdate,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff2D527E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.white,
                    elevation: 3,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            IconContainer(
                icon: Icons.arrow_back_ios_new,
                iconColor: Color(0xff2D527E),
                containerColor: Colors.white,
                press: () {
                  Get.back();
                })
          ],
        ),
      ),
    );
  }
}
