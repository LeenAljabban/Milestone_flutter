import 'package:first/Services/LeaveRequeatService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../Models/TeacherCourses.dart';
import '../../Services/SchudleAppointmentService.dart';
import 'TeacherHomeController.dart';

class SchudleAppointmentController extends GetxController {
  var selectedDate = DateTime.now().obs;
  late TextEditingController startdateController, commentController;
  late TeacherHomeController teacherHomeController;

  var selected = "10:00".obs;
  late var selectedcourse;
  late List<TeacherCourses> courses;
  List<String> types = [
    '10:00',
    '10:30',
    '11:00',
    '11:30',
    '12:00',
    '12:30',
    '13:00',
    '13:30',
    '14:00',
    '14:30',
    '15:00',
    '15:30',
    '16:00',
    '16:30',
    '17:00',
    '17:30',
    '18:00'
  ];

  @override
  void onInit() {
    startdateController = TextEditingController();
    commentController = TextEditingController();
    teacherHomeController = TeacherHomeController();
    courses = teacherHomeController.teachercourses_list;
  }

  chooseDate(controll) async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2023),
      lastDate: DateTime(2024),
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      controll.text =
          DateFormat('dd-MM-yyyy').format(selectedDate.value).toString();
    }
  }

  void setSelected(String value) {
    selected.value = value;
  }

  void setSelectedcourse(int value) {
    selectedcourse.value = value;
  }

  void CallSendSchudle() async {
    try {
      var data = await SchudleAppointmentService.SendAppointmentRequest(
          'teacher/send/ZoomNotification',
          selectedcourse,
          startdateController.text,
          selected.toString(),
          commentController.text);
      if (data) {
        print('appointment sent successfully');
        Get.snackbar('appointment sent Successfully', ' ',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white);
      } else {
        print('Try again');
        Get.snackbar('appointment did not send', 'please try again later',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } finally {}
  }
}
