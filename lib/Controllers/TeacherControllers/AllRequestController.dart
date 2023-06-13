import 'package:first/Models/TeacherRequestModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

import '../../Services/AllRequestService.dart';

import '../../Services/resignationservice.dart';

class AllRequestController extends GetxController {
  Color blue = Color(0xff2D527E);
  List<TeacherRequest> teacherrequest_list = [];
  var isLoading3 = false.obs;

  @override
  void onInit() {
    CallGetRequests();
    super.onInit();
  }

  CallGetRequests() async {
    try {
      var data = await AllRequestService.getAllRequests(
        'teacher/get/Requests',
      );
      if (data != null) {
        teacherrequest_list.addAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading3(true);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
