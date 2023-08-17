import 'package:first/Controllers/StudentsControllers/MarksController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

class Marks extends StatelessWidget {
  MarksController controller = Get.put(MarksController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
            () =>
        controller.isloading.value
            ? Scaffold(
          body: controller.marks.length > 0
              ? Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 96.0,
                        left: 60,
                        right: 60,
                      ),
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.marks.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Padding(
                            padding:
                            const EdgeInsets.only(top: 20.0),
                            child: InkWell(
                              onTap: () {
                                controller.viewMarkDetails(
                                    controller.marks[index].courseId);
                              },
                              child: Card(
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      controller
                                          .marks[index].courseName,
                                      style: TextStyle(
                                        fontSize: 27,
                                        color: Color(0xff2D527E)
                                            .withOpacity(0.6),
                                        fontFamily: 'segoepr',
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xff2D527E)
                                            .withOpacity(0.09),
                                      ),
                                      BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: -15.0,
                                        blurRadius: 15.0,
                                      ),
                                    ],
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xff2D527E)
                                          .withOpacity(0.9),
                                      width: 4),
                                  borderRadius:
                                  BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          );
                        },
                        gridDelegate:
                        SliverGridDelegateWithMaxCrossAxisExtent(
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 5,
                            maxCrossAxisExtent: 200),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    )
                  ],
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
                          "My Marks",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'segoepr',
                          ),
                        ),
                      )),
                ),
              ),
            ],
          )
              : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'there is no marks yet !',
                  style: TextStyle(
                      fontFamily: 'segoepr',
                      color: Color(0xff2D527E),
                      fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset('Images/sandclock.png'),
              ],
            ),
          ),
        )
            : Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
