import 'package:first/Models/TeacherRequestModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

import '../../Services/AllRequestService.dart';

import '../../Services/resignationservice.dart';
import '../Models/NotificationModel.dart';
import '../Services/NotificationService.dart';

class NotificationController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxList<NotificationModel> notification_list = <NotificationModel>[].obs;
  var isLoading3 = false.obs;

  @override
  void onInit() {
    CallGetNotification();
    super.onInit();
  }

  CallGetNotification() async {
    try {
      var data = await NotificationService.getAllNotification(
        'student/get/Notification',
      );
      if (data != null) {
        notification_list.value = data;
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
