import 'package:first/Services/LeaveRequeatService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LeaveRequestController extends GetxController {
  var selectedDate = DateTime.now().obs;
  late TextEditingController startdateController,
      enddateController,
      commentController;

  // late TextEditingController numDaysController;
  var selected = "paid leave".obs;
  List<String> types = ['paid leave', 'unpaid leave', 'sick', 'others'];

  @override
  void onInit() {
    startdateController = TextEditingController();
    enddateController = TextEditingController();
    commentController = TextEditingController();
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

  void CallLeaveRequest() async {
    try {
      var data = await LeaveRequestService.LeaveRequest(
          'teacher/upload/Resignation',
          startdateController.text,
          enddateController.text,
          selected.toString(),
          commentController.text);
      if (data) {
        print('request sent successfully');
        Get.snackbar('Request sent Successfully', ' ',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green,
            colorText: Colors.white);
      } else {
        print('Try again');
        Get.snackbar('Request did not send', 'please try again later',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } finally {}
  }
}
