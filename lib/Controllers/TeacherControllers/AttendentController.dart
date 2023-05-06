import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendentController extends GetxController {
  RxInt SelectedSession = 1.obs;

  List<Map<String, dynamic>> myList = [
    {'id': 1, 'name': 'Ahmad almasri', 'Attendent': 'present'},
    {'id': 2, 'name': 'Usama alserawan', 'Attendent': 'present'},
    {'id': 3, 'name': 'abd alrahman aljabban ', 'Attendent': 'absent'}
  ];
}
