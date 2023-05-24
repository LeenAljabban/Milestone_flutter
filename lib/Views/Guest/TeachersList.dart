import 'package:first/Controllers/GuestControllers/TeacherListController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

class TeachersList extends GetView<TeachersListController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 96),
                  child: ListView.builder(
                      controller: controller.scrollController,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.list.length,
                      itemBuilder: (context, index) {
                        if (index < controller.list.length) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(20, 14, 20, 0),
                            child: SizedBox(
                              height: 100,
                              child: ListTile(
                                // contentPadding: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                title: Text(
                                  controller.list[index].lastName +
                                      ' ' +
                                      controller.list[index].lastName,
                                  style: TextStyle(
                                    color: Color(0xff2D527E),
                                    fontFamily: 'segoepr',
                                  ),
                                ),
                                subtitle: Text(
                                  controller.list[index].email,
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: 'segoepr',
                                  ),
                                ),
                                leading: Container(
                                  width: 50,
                                  height: 100,
                                  child: Image.network(
                                    'http://192.168.1.54:8000/${controller.list[index].image}',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          ClipPath(
            clipper: WaveClipperTwo(
              flip: true,
            ),
            child: Container(
              height: 113,
              color: Color(0xffAFBBCB),
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
                  "All Teachers",
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
      )),
    );
  }
}
