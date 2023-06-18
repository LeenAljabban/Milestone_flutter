import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:first/Controllers/StudentsControllers/EducationalContentController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../Component/RoundedAppbar.dart';
import '../../Controllers/TeacherControllers/EducationalContentTeacherController.dart';

class EducationalContentTeacher extends StatelessWidget {
  EducationalContentTeacherController controller =
      Get.put(EducationalContentTeacherController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: -290,
              right: -150,
              child: ClipOval(
                child: Container(
                  color: Color(0xff2D527E),
                  height: 400.0, // height of the button
                  width: 420.0, // width of the button
                ),
              )),
          Positioned(
              bottom: -350,
              left: -170,
              child: ClipOval(
                child: Container(
                  color: Color(0xff2D527E),
                  height: 400.0, // height of the button
                  width: 420.0, // width of the button
                ),
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0, left: 10, top: 55),
                child: Container(
                  height: 60,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff2D527E),
                          blurRadius: 5.0,
                        )
                      ],
                      border: Border.all(color: Color(0xff2D527E), width: 2)),
                  child: Text(
                    'Educational Content',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff2D527E),
                      fontWeight: FontWeight.bold,
                      // wordSpacing: 2.5,
                      fontFamily: 'segoepr',
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Obx(
                    () => controller.isLoading.value
                        ? SingleChildScrollView(
                            child: Column(
                              children: [
                                GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount:
                                      controller.educationalcontent_list.length,
                                  itemBuilder: (BuildContext ctx, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            InkWell(
                                              child: Container(
                                                height: 80,
                                                width: 80,
                                                child: Icon(
                                                  Icons.volume_down_outlined,
                                                  color: Color(0xff2D527E),
                                                  size: 80,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0xff2D527E),
                                                      blurRadius: 5.0,
                                                    )
                                                  ],
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1),
                                                ),
                                              ),
                                              onTap: () {
                                                // Call the `playMp3` method of your `EducationalContentController` to play the MP3 file
                                                // Get.find<
                                                //         EducationalContentController>()
                                                //     .playMp3();
                                              },
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Text(
                                                controller
                                                    .educationalcontent_list[
                                                        index]
                                                    .file
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color(0xff2D527E),
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'segoepr',
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 240,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Center(child: CircularProgressIndicator()),
                  )),
            ],
          ),
          IconContainer(
            icon: Icons.arrow_back_ios_new,
            iconColor: Colors.white,
            containerColor: Color(0xff2D527E),
            press: () {
              Get.back();
            },
          ),
        ],
      ),
    ));
  }
}
