import 'package:first/Controllers/TeacherControllers/SpecificCourseController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:timeline_tile/timeline_tile.dart';

import '../../Component/IconContainer.dart';

class SpecificCourse extends StatelessWidget {
  SpecificCourseController controller = Get.put(SpecificCourseController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Obx(
        () => controller.isLoading3.value
            ? Center(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 210,
                          decoration: BoxDecoration(
                            color: Color(0xff2D527E),
                            //borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text(
                                  controller.teacherCourse!.name.toString() +
                                      ' Course',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      // fontFamily: 'segoepr',
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 40,
                                        child: TimelineTile(
                                          axis: TimelineAxis.horizontal,
                                          alignment: TimelineAlign.center,
                                          indicatorStyle: IndicatorStyle(
                                            height: 18,
                                            color: controller.is_sun == true
                                                ? Color(0xffEF5432)
                                                : Colors.white,
                                          ),
                                          afterLineStyle: const LineStyle(
                                            color: Colors.white,
                                            thickness: 4,
                                          ),
                                          beforeLineStyle: const LineStyle(
                                            color: Colors.white,
                                            thickness: 4,
                                          ),
                                          endChild: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Sun',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      controller.is_sun == true
                                                          ? Color(0xffEF5432)
                                                          : Colors.white,
                                                  // fontFamily: 'segoepr',
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: TimelineTile(
                                            axis: TimelineAxis.horizontal,
                                            alignment: TimelineAlign.center,
                                            indicatorStyle: IndicatorStyle(
                                              height: 18,
                                              color: controller.is_mon == true
                                                  ? Color(0xffEF5432)
                                                  : Colors.white,
                                            ),
                                            endChild: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text(
                                                'Mon',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: controller.is_mon ==
                                                            true
                                                        ? Color(0xffEF5432)
                                                        : Colors
                                                            .white, // fontFamily: 'segoepr',
                                                    fontSize: 15),
                                              ),
                                            ),
                                            afterLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            ),
                                            beforeLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: TimelineTile(
                                            axis: TimelineAxis.horizontal,
                                            alignment: TimelineAlign.center,
                                            indicatorStyle: IndicatorStyle(
                                              height: 18,
                                              color: controller.is_tue == true
                                                  ? Color(0xffEF5432)
                                                  : Colors.white,
                                            ),
                                            endChild: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text(
                                                'Tue',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: controller.is_tue ==
                                                            true
                                                        ? Color(0xffEF5432)
                                                        : Colors.white,
                                                    // fontFamily: 'segoepr',
                                                    fontSize: 15),
                                              ),
                                            ),
                                            afterLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            ),
                                            beforeLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: TimelineTile(
                                            axis: TimelineAxis.horizontal,
                                            alignment: TimelineAlign.center,
                                            indicatorStyle: IndicatorStyle(
                                              height: 18,
                                              color: controller.is_wed == true
                                                  ? Color(0xffEF5432)
                                                  : Colors.white,
                                            ),
                                            endChild: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text(
                                                'Wed',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: controller.is_wed ==
                                                            true
                                                        ? Color(0xffEF5432)
                                                        : Colors
                                                            .white, // fontFamily: 'segoepr',
                                                    fontSize: 15),
                                              ),
                                            ),
                                            afterLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            ),
                                            beforeLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: TimelineTile(
                                            axis: TimelineAxis.horizontal,
                                            alignment: TimelineAlign.center,
                                            indicatorStyle: IndicatorStyle(
                                              height: 18,
                                              color: controller.is_thu == true
                                                  ? Color(0xffEF5432)
                                                  : Colors.white,
                                            ),
                                            endChild: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text(
                                                'Thu',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: controller.is_thu ==
                                                            true
                                                        ? Color(0xffEF5432)
                                                        : Colors
                                                            .white, // fontFamily: 'segoepr',
                                                    fontSize: 15),
                                              ),
                                            ),
                                            afterLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            ),
                                            beforeLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: TimelineTile(
                                            axis: TimelineAxis.horizontal,
                                            alignment: TimelineAlign.center,
                                            indicatorStyle: IndicatorStyle(
                                              height: 18,
                                              color: controller.is_fri == true
                                                  ? Color(0xffEF5432)
                                                  : Colors.white,
                                            ),
                                            endChild: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text(
                                                'Fri',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: controller.is_fri ==
                                                            true
                                                        ? Color(0xffEF5432)
                                                        : Colors
                                                            .white, // fontFamily: 'segoepr',
                                                    fontSize: 15),
                                              ),
                                            ),
                                            afterLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            ),
                                            beforeLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 40,
                                        child: TimelineTile(
                                            axis: TimelineAxis.horizontal,
                                            alignment: TimelineAlign.center,
                                            indicatorStyle: IndicatorStyle(
                                              height: 18,
                                              color: controller.is_sat == true
                                                  ? Color(0xffEF5432)
                                                  : Colors.white,
                                            ),
                                            endChild: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0),
                                              child: Text(
                                                'Sat',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: controller.is_sat ==
                                                            true
                                                        ? Color(0xffEF5432)
                                                        : Colors.white,
                                                    // fontFamily: 'segoepr',
                                                    fontSize: 15),
                                              ),
                                            ),
                                            beforeLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            ),
                                            afterLineStyle: const LineStyle(
                                              color: Colors.white,
                                              thickness: 4,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(
                                    controller.teacherCourse!.startHour
                                            .substring(0, 5) +
                                        " - " +
                                        controller.teacherCourse!.endHour
                                            .substring(0, 5),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'segoepr',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                Text(
                                  'room ' +
                                      controller.teacherCourse!.className
                                          .toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'segoepr',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(minHeight: 500),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                //borderRadius: BorderRadius.circular(10),

                                // border:
                                //     Border.all(color: Color(0xff2D527E), width: 7),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 45),
                                child: Column(
                                  children: [
                                    InkWell(
                                      child: Container(
                                        width: 350,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff2D527E),
                                                blurRadius: 5.0,
                                              )
                                            ],
                                            border: Border.all(
                                                color: Color(0xff2D527E),
                                                width: 2)),
                                        child: Center(
                                          child: Text('Educational content',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: Color(0xff2D527E),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                //height: -1.5
                                              )),
                                        ),
                                      ),
                                      onTap: () {
                                        Get.toNamed(
                                            '/EducationalContentTeacher',
                                            arguments:
                                                controller.teacherCourse!.id);
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      child: Container(
                                        width: 350,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff2D527E),
                                                blurRadius: 5.0,
                                              )
                                            ],
                                            border: Border.all(
                                                color: Color(0xff2D527E),
                                                width: 2)),
                                        child: Center(
                                          child: Text('Upload homework',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: Color(0xff2D527E),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                //height: -1.5
                                              )),
                                        ),
                                      ),
                                      onTap: () {
                                        Get.toNamed('/UploadHomework');
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      child: Container(
                                        width: 350,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff2D527E),
                                                blurRadius: 5.0,
                                              )
                                            ],
                                            border: Border.all(
                                                color: Color(0xff2D527E),
                                                width: 2)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Center(
                                            child: Text('Attendence',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'segoepr',
                                                  color: Color(0xff2D527E),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  //height: -1.5
                                                )),
                                          ),
                                        ),
                                      ),
                                      onTap: () {
                                        Get.toNamed('/Attendent',
                                            arguments:
                                                controller.teacherCourse!.id);
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      child: Container(
                                        width: 350,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff2D527E),
                                                blurRadius: 5.0,
                                              )
                                            ],
                                            border: Border.all(
                                                color: Color(0xff2D527E),
                                                width: 2)),
                                        child: Center(
                                          child: Text(' Students',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: Color(0xff2D527E),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                //height: -1.5
                                              )),
                                        ),
                                      ),
                                      onTap: () {
                                        Get.toNamed('/Students',
                                            arguments:
                                                controller.teacherCourse!.id);
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      width: 350,
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xff2D527E),
                                              blurRadius: 5.0,
                                            )
                                          ],
                                          border: Border.all(
                                              color: Color(0xff2D527E),
                                              width: 2)),
                                      child: Center(
                                        child: Text('Schedule appointment',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'segoepr',
                                              color: Color(0xff2D527E),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              //height: -1.5
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
              )
            : Center(child: CircularProgressIndicator()),
      ),
    )));
  }
}
