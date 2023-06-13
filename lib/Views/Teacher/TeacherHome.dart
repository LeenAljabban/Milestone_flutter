import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:first/Views/Teacher/TeacherSideBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../Component/RoundedAppbar.dart';
import '../../Controllers/TeacherControllers/TeacherHomeController.dart';

class TeacherHome extends StatelessWidget {
  TeacherHomeController controller = Get.put(TeacherHomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: controller.key,
      drawer: TeacherSideBar(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            RoundedAppBar(
              val: 0,
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 55, right: 10),
                    child: Container(
                      width: 340,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2D527E),
                              blurRadius: 7.0,
                            )
                          ],
                          border:
                              Border.all(color: Color(0xff2D527E), width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Search...',
                                  labelStyle:
                                      TextStyle(color: Colors.grey.shade400),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Color(0xff2D527E),
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          width: 160,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff2D527E),
                                  blurRadius: 5.0,
                                )
                              ],
                              border: Border.all(
                                  color: Color(0xff2D527E), width: 2)),
                          child: Center(
                            child: Text(' Resignation\n Request',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'segoepr',
                                  color: Color(0xff2D527E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  //height: -1.5
                                )),
                          ),
                        ),
                        onTap: () {
                          Get.toNamed(
                            '/ResignationRequest',
                          );
                        },
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Container(
                          width: 160,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff2D527E),
                                  blurRadius: 5.0,
                                )
                              ],
                              border: Border.all(
                                  color: Color(0xff2D527E), width: 2)),
                          child: Center(
                            child: Text('Vacation \n Request',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'segoepr',
                                  color: Color(0xff2D527E),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  //height: -1.5
                                )),
                          ),
                        ),
                        onTap: () {
                          Get.toNamed(
                            '/LeaveRequest',
                          );
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My classes : ',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'segoepr',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2D527E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 340,
                    height: 430,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff2D527E),
                            blurRadius: 4.0,
                          )
                        ],
                        border: Border.all(color: Colors.grey, width: 2)),
                    child: Obx(() => controller.isLoading3.value
                        ? ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.teachercourses_list.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 7),
                                child: InkWell(
                                  child: Container(
                                    width: 300,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        color: Color(0xff2D527E),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff2D527E),
                                            blurRadius: 4.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 5)),
                                    child: Center(
                                      child: Text(
                                        controller
                                            .teachercourses_list[index].name,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'segoepr',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25),
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Get.toNamed('/SpecificCourse',
                                        arguments: controller
                                            .teachercourses_list[index].id);
                                  },
                                ),
                              );
                            })
                        : Center(child: CircularProgressIndicator())),
                    /*
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child:
                      Column(
                        children: [
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Color(0xff2D527E),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff2D527E),
                                    blurRadius: 4.0,
                                  )
                                ],
                                border: Border.all(
                                    color: Color(0xff2D527E), width: 2)),
                          )
                        ],
                      ),
                    ),*/
                  ),
                ],
              ),
            ),
            IconContainer(
                icon: Icons.list,
                iconColor: Colors.white,
                containerColor: Color(0xff2D527E),
                press: () {
                  controller.key.currentState?.openDrawer();
                }),
          ],
        ),
      ),
    ));
  }
}
