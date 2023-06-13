import 'dart:ui';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../Component/RoundedAppbar.dart';
import '../../Controllers/TeacherControllers/OurTeacherController.dart';

class OurTeachers extends GetView<OueTeacherController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Positioned(
            //     bottom: 60,
            //     right: -380,
            //     child: ClipOval(
            //       child: Container(
            //         color: Colors.grey.shade400,
            //         height: 400.0, // height of the button
            //         width: 420.0, // width of the button
            //       ),
            //     )),
            // Positioned(
            //     bottom: -60,
            //     right: -380,
            //     child: ClipOval(
            //       child: Container(
            //         color: Color(0xff2D527E),
            //         height: 400.0, // height of the button
            //         width: 420.0, // width of the button
            //       ),
            //     )),

            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Obx(() => controller.isLoading3.value
                    ? ListView.builder(
                        itemCount: controller.teachers.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 7),
                            child: InkWell(
                              child: Container(
                                width: 360,
                                height: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff2D527E),
                                      blurRadius: 5.0,
                                    )
                                  ],
                                  // border: Border.all(
                                  //     color: Color(0xff2D527E), width: 2)
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Container(
                                        height: 90,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                'http://192.168.1.45:8000/${controller.teachers[index].image}',
                                              ),
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: Text(
                                                'Ms- ' +
                                                    controller.teachers[index]
                                                        .firstName +
                                                    ' ' +
                                                    controller.teachers[index]
                                                        .lastName,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Color(0xff2D527E),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                  //height: -1.5
                                                )),
                                          ),
                                          Text(controller.teachers[index].email,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                color: Colors.grey.shade500,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Get.toNamed('/Teacher',
                                    arguments: controller.teachers[index]);
                              },
                            ),
                          );
                        })
                    : Center(child: CircularProgressIndicator())),
              ),
            ),
            ClipPath(
              clipper: WaveClipperTwo(
                flip: true,
              ),
              child: Container(
                height: 113,
                color: Colors.grey.shade400,
              ),
            ),
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 113,
                color: Color(0xff2D527E),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    "Our Teachers",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'segoepr',
                    ),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: IconContainer(
                icon: Icons.arrow_back_ios_new,
                iconColor: Color(0xff2D527E),
                containerColor: Colors.white,
                press: () {
                  Get.back();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
