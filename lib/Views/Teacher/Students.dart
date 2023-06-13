import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:first/Controllers/TeacherControllers/StudentController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../Component/RoundedAppbar.dart';

class Students extends StatelessWidget {
  StudentController controller = Get.put(StudentController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                top: -220,
                right: -180,
                child: ClipOval(
                  child: Container(
                    color: Color(0xff2D527E),
                    height: 320.0, // height of the button
                    width: 400.0, // width of the button
                  ),
                )),
            Positioned(
                bottom: -220,
                left: -180,
                child: ClipOval(
                  child: Container(
                    color: Color(0xff2D527E),
                    height: 320.0, // height of the button
                    width: 400.0, // width of the button
                  ),
                )),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 55),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: 700),
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
                    width: 340,
                    //height: 700,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              'Students Names',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff2D527E),
                                  fontFamily: 'segoepr',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              height: 35,
                              thickness: 2,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Obx(() => controller.isLoading.value
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: controller.student_list.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20.0, 14, 20, 0),
                                        child: Text(
                                          controller.student_list[index].user
                                                  .firstName
                                                  .toString() +
                                              ' ' +
                                              controller.student_list[index]
                                                  .user.lastName
                                                  .toString(),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color(0xff2D527E),
                                            fontFamily: 'segoepr',
                                            fontSize: 20,
                                            //fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      );
                                    })
                                : Center(child: CircularProgressIndicator())),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconContainer(
              icon: Icons.arrow_back_ios_new,
              iconColor: Color(0xff2D527E),
              containerColor: Colors.white,
              press: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    ));
  }
}
