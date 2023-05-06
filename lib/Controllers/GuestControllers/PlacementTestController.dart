import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlacementTestController extends GetxController {
  Color blue = Color(0xff2D527E);

  static const CountdownDuration = Duration(hours: 1, minutes: 60, seconds: 60);
  Timer? timer;
  int remainingSeconds = 1;
  final minutes = '00'.obs;
  final seconds = '00'.obs;
  final hours = '02'.obs;

  // @override
  // void onReady() {
  //   startTimer(100);
  //
  //   super.onReady();
  // }

  void startTimer(int second) {
    Duration duration = Duration(seconds: 1);
    remainingSeconds = second;
    timer = Timer.periodic(duration, (Timer timer) {
      if (remainingSeconds == -1) {
        timer.cancel();
        Get.defaultDialog(
            title: 'Time is up !',
            // titlePadding: EdgeInsets.only(top: 50),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            titleStyle: TextStyle(
              color: Color(0xffEF5432),
            ),
            radius: 20,
            barrierDismissible: false,
            content: WillPopScope(
              onWillPop: () async => false,
              child: Container(
                height: 50,
              ),
            ));
      } else {
        hours.value =
            (remainingSeconds ~/ 3600).toInt().toString().padLeft(2, "0");
        minutes.value =
            ((remainingSeconds / 60) % 60).toInt().toString().padLeft(2, '0');
        seconds.value =
            (remainingSeconds % 60).toInt().toString().padLeft(2, "0");
        remainingSeconds--;
      }
    });
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.onClose();
  }
}
