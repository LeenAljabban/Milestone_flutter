import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import '../../Controllers/TeacherControllers/AllRequestController.dart';

class MyRequests extends StatelessWidget {
  AllRequestController controller = Get.put(AllRequestController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            controller.teacherrequest_list.isNotEmpty
                ? Obx(
                    () => RefreshIndicator(
                      onRefresh: () {
                        return controller.CallGetRequests();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 96),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: controller.teacherrequest_list.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20.0, 14, 20, 0),
                                child: Container(
                                  width: double.infinity,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xff2D527E),
                                        blurRadius: 5.0,
                                      )
                                    ],
                                    border: Border.all(
                                        color: Color(0xff2D527E), width: 2),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 3.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                  '${controller.teacherrequest_list[index].type} Request',
                                                  //textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    fontFamily: 'segoepr',
                                                    color: Color(0xff2D527E),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    //height: -1.5
                                                  )),
                                              Container(
                                                height: 30,
                                                width: 110,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                      controller
                                                          .teacherrequest_list[
                                                              index]
                                                          .status
                                                          .name
                                                          .toString(),
                                                      style: const TextStyle(
                                                        fontFamily: 'segoepr',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        //height: -1.5
                                                      )),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 3.0),
                                          child: Text(
                                            controller
                                                    .teacherrequest_list[index]
                                                    .createdAt
                                                    .day
                                                    .toString() +
                                                '/' +
                                                controller
                                                    .teacherrequest_list[index]
                                                    .createdAt
                                                    .month
                                                    .toString() +
                                                '/' +
                                                controller
                                                    .teacherrequest_list[index]
                                                    .createdAt
                                                    .year
                                                    .toString(),
                                            style: TextStyle(
                                              color: Colors.grey.shade500,
                                              fontSize: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Center(
                      child: Text(
                        'you do not have any request..',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff2D527E),
                          fontFamily: 'segoepr',
                        ),
                      ),
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
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    "My Requests",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'segoepr',
                    ),
                  ),
                )),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 5.0),
            //   child: IconContainer(
            //     icon: Icons.arrow_back_ios_new,
            //     iconColor: Color(0xff2D527E),
            //     containerColor: Colors.white,
            //     press: () {},
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
