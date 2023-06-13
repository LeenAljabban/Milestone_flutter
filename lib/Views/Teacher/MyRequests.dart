import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import '../../Component/IconContainer.dart';
import '../../Controllers/TeacherControllers/AllRequestController.dart';

class MyRequests extends StatelessWidget {
  AllRequestController controller = Get.put(AllRequestController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () {
          return controller.CallGetRequests();
        },
        child: Scaffold(
          body: Stack(
            children: [
              controller.teacherrequest_list.length != 0
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 96),
                            child: Obx(
                              () => ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount:
                                      controller.teacherrequest_list.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          20.0, 14, 20, 0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 80,
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
                                              color: Color(0xff2D527E),
                                              width: 2),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        controller
                                                                .teacherrequest_list[
                                                                    index]
                                                                .type +
                                                            ' Request',
                                                        //textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                          fontFamily: 'segoepr',
                                                          color:
                                                              Color(0xff2D527E),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16,
                                                          //height: -1.5
                                                        )),
                                                    Container(
                                                      height: 30,
                                                      width: 110,
                                                      decoration: BoxDecoration(
                                                        color: Colors.blue,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                            controller
                                                                .teacherrequest_list[
                                                                    index]
                                                                .status
                                                                .name
                                                                .toString(),
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'segoepr',
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
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
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3.0),
                                                child: Text(
                                                  controller
                                                          .teacherrequest_list[
                                                              index]
                                                          .createdAt
                                                          .day
                                                          .toString() +
                                                      '/' +
                                                      controller
                                                          .teacherrequest_list[
                                                              index]
                                                          .createdAt
                                                          .month
                                                          .toString() +
                                                      '/' +
                                                      controller
                                                          .teacherrequest_list[
                                                              index]
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
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Center(
                        child: Text(
                          'you do not have any request..',
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
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
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
      ),
    );
  }
}
