import 'package:first/Services/ReserveService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../../Models/AdvertismentModel.dart';

class ReserveController extends GetxController {
  Color blue = Color(0xff2D527E);
  AdvertismentModel adv = AdvertismentModel();
  var isLoading = false.obs;
  int? id;

  @override
  void onInit() {
    id = Get.arguments;
    CallCourseInfo(id);
  }

  CallCourseInfo(Adv_id) async {
    try {
      var data = await ReserveService.CourseInfo(
          'student/get/advertismentById', Adv_id);
      if (data != null) {
        adv = data;
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading(true);
    }
  }

  CallReserve() async {
    try {
      var data = await ReserveService.Reserve('student/check11', adv.id);
      if (data != null) {
        Get.defaultDialog(
            title: 'Your Name Is Added To This Class .',
            titlePadding: EdgeInsets.only(top: 50),
            titleStyle: TextStyle(
                color: Color(0xff2D527E),
                fontFamily: 'segoepr',
                fontWeight: FontWeight.bold),
            radius: 20,
            barrierDismissible: false,
            content: Column(
              children: [
                Container(
                  height: 150,
                  child: Center(
                    child: Text(
                      "Please Visit Us To Pay Within A Week Or Your Name Will Be Removed!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff2D527E),
                          fontFamily: 'segoepr',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                /////////////////////////////////////////////////////////////////////
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xff2D527E),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.offAllNamed('/BottomNavigation');
                  },
                  child: Text(
                    'Understand, Back home ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'segoepr',
                        fontSize: 20),
                  ),
                ),

                ///////////////////////////////////////////////////////////////////
              ],
            ));
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
