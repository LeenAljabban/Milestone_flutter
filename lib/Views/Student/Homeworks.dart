import 'dart:io';
import 'package:first/Controllers/StudentsControllers/HomeWorkController.dart';
import 'package:first/global.dart';
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
                  ? controller.homework.length != 0
                      ? ListView.builder(
                          itemCount: controller.homework.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(20.0, 14, 20, 0),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(minHeight: 80),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: controller.blue,
                                        blurRadius: 5.0,
                                      )
                                    ],
                                    border: Border.all(
                                        color: controller.blue, width: 2),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 5),
                                    child: controller.homework[index].file !=
                                            null
                                        ? ListTile(
                                            title: Text(
                                              controller.homework[index].text !=
                                                      null
                                                  ? controller
                                                      .homework[index].text!
                                                  : controller
                                                      .homework[index].file!,
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: controller.blue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                //height: -1.5
                                              ),
                                            ),
                                            subtitle: Text(
                                              controller
                                                  .homework[index].createdAt!
                                                  .toString()
                                                  .substring(0, 10),
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: Colors.grey.shade500,
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                //height: -1.5
                                              ),
                                            ),
                                            trailing: IconButton(
                                                onPressed: () {
                                                  controller.downloadFile(
                                                      imageurl +
                                                          controller
                                                              .homework[index]
                                                              .file!);
                                                },
                                                icon: Icon(Icons.download)),
                                          )
                                        : ListTile(
                                            title: Text(
                                              controller.homework[index].text!,
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: controller.blue,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                //height: -1.5
                                              ),
                                            ),
                                            subtitle: Text(
                                                controller
                                                    .homework[index].createdAt!
                                                    .toString()
                                                    .substring(0, 10),
                                                //textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'segoepr',
                                                  color: Colors.grey.shade500,
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                  //height: -1.5
                                                )),
                                          ),
                                  ),
                                ),
                              ),
                            );
                          })
                      : Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                            child: Text(
                              'you do not have any homework yet..',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff2D527E),
                                fontFamily: 'segoepr',
                              ),
                            ),
                          ),
                        )
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
              iconColor: controller.blue,
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
