import 'package:first/Models/AttendendModel.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Services/AttendedService.dart';

class AttendentController extends GetxController {
  RxInt selectedSession = 1.obs;

  List<AttendedModel> list = <AttendedModel>[];

  List<List<Attendance>> attendanceList = <List<Attendance>>[];
  List<Map<dynamic, dynamic>> myList = [];
  RxBool isloading = false.obs;

  @override
  void onInit() {
    super.onInit();

    CallgetAttendend();
  }

  CallgetAttendend() async {
    try {
      var data = await AttendendService.getAttendend('dayByDay', 3);
      if (data != null) {
        list = data;

        list.forEach((e) => attendanceList.add(e.attendance));

        // for (int i = 0; i < list.length; i++) {
        //   var map = {};
        //   map['id'] = i;
        //   map['name'] = list[i].attendance;
        //   myList.add(map);
        // }
        print(attendanceList);
      } else {}
    } finally {
      isloading(true);
    }
  }
}
