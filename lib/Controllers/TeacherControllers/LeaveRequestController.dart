import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LeaveRequestController extends GetxController {
  var selectedDate = DateTime.now().obs;
  late TextEditingController dateController;
  RxInt NumDays = 1.obs;
  late TextEditingController numDaysController;
  var selected = "paid leave".obs;
  List<String> types = ['paid leave', 'unpaid leave', 'sick', 'others'];

  @override
  void onInit() {
    dateController = TextEditingController();
  }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2023),
        lastDate: DateTime(2024));
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      dateController.text =
          DateFormat('dd-MM-yyyy').format(selectedDate.value).toString();
    }
  }

  IncreaseDays() {
    NumDays.value++;
  }

  DecraeseDays() {
    if (NumDays.value > 1) NumDays.value--;
  }

  void setSelected(String value) {
    selected.value = value;
  }
}
