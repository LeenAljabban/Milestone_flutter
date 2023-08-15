import 'package:first/Controllers/TeacherControllers/AttendentController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';

class Attendent extends GetView<AttendentController> {
  const Attendent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(() => controller.isloading.value
            ? Scaffold(
                body: Column(
                  children: [
                    Container(
                      height: 200,
                      color: Color(0xff2D527E),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Center(
                                child: Text(
                                  "Choose session",
                                  style: TextStyle(
                                    fontSize: 27,
                                    color: Colors.white,
                                    fontFamily: 'segoepr',
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 10),
                                  child: GridView.builder(
                                    scrollDirection: Axis.horizontal,
                                    //shrinkWrap: true,
                                    itemCount: controller.list.length,
                                    itemBuilder: (BuildContext ctx, index) {
                                      return Obx(
                                        () => InkWell(
                                          child: Card(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: const Color(0xff2D527E)
                                                      .withOpacity(0.9),
                                                  width: 3),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0xff2D527E)
                                                        .withOpacity(0.09),
                                                  ),
                                                  const BoxShadow(
                                                    color: Colors.white,
                                                    spreadRadius: -15.0,
                                                    blurRadius: 15.0,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '${index + 1}',
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    color: controller
                                                                .selectedSession ==
                                                            index + 1
                                                        ? Colors.red
                                                        : Color(0xff2D527E)
                                                            .withOpacity(0.7),
                                                    fontFamily: 'segoepr',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: () {
                                            controller.selectedSession.value =
                                                index + 1;
                                          },
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 0,
                                      mainAxisSpacing: 0,
                                      crossAxisCount: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          IconContainer(
                            icon: Icons.arrow_back_ios_new,
                            iconColor: const Color(0xff2D527E),
                            containerColor: Colors.white,
                            press: () {
                              Get.back();
                            },
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: controller
                              .attendanceList[
                                  controller.selectedSession.value - 1]
                              .length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 14, 20, 0),
                              child: Column(
                                children: [
                                  ListTile(
                                    title: Text(
                                      controller
                                              .attendanceList[controller
                                                      .selectedSession.value -
                                                  1][index]
                                              .firstName +
                                          '\t' +
                                          controller
                                              .attendanceList[controller
                                                      .selectedSession.value -
                                                  1][index]
                                              .lastName,
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    leading: Text((index + 1).toString()),
                                  ),
                                  const Divider(),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
            : const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              )));
  }
}
