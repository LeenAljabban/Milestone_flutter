import 'package:first/Services/ReserveService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

class ReserveController extends GetxController {
  Color blue = Color(0xff2D527E);

  CallReserve() async {
    try {
      var data = await ReserveService.Reserve(
        '',
      );
      if (data != null) {
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
