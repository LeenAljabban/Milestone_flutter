import 'dart:io';
import 'package:first/Controllers/StudentsControllers/HomeWorkController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import '../../Component/IconContainer.dart';

class HomeWorks extends StatelessWidget {
  HomeWorkController controller = Get.put(HomeWorkController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 96),
            child: Obx(
              () => controller.isloading.value
                  ? ListView.builder(
                      itemCount: controller.homework.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 14, 20, 0),
                          child: InkWell(
                            onTap: () async {
                              // controller.downloadFile(
                              //     'http://192.168.1.106:8000/${controller.homework[index].file}',
                              //     "Internal storage/leenoo");
                              controller.downloadFile(
                                  'http://192.168.1.106:8000/${controller.homework[index].file}');
                            },
                            child: Container(
                                width: double.infinity,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff2D527E),
                                        blurRadius: 5.0,
                                      )
                                    ],
                                    border: Border.all(
                                        color: Color(0xff2D527E), width: 2)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 20, top: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      controller.homework[index].text != null
                                          ? Text(
                                              controller.homework[index].text!,
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: Color(0xff2D527E),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                //height: -1.5
                                              ),
                                            )
                                          : Text(
                                              controller.homework[index].file!
                                                  .substring(6),
                                              maxLines: 1,
                                              // textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: Color(0xff2D527E),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                //height: -1.5
                                              ),
                                            ),
                                      Text(
                                          controller.homework[index].createdAt!
                                              .toString()
                                              .substring(0, 10),
                                          //textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'segoepr',
                                            color: Colors.grey.shade500,
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            //height: -1.5
                                          ))
                                    ],
                                  ),
                                )),
                          ),
                        );
                      })
                  : Center(child: CircularProgressIndicator()),
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
                  "HomeWorks",
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
      )),
    );
  }
}
