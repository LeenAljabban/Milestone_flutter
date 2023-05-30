import 'package:first/Services/QrScannerService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class QrScannerController extends GetxController {
  Color blue = Color(0xff2D527E);
  String barcodeScanRes = '';

  Future<void> CallSubmitQr() async {
    try {
      var data =
          await QrScannerService.SubmitQr('student/Attendence', barcodeScanRes);
      if (data != null) {
        if (data['message'] == "Attendance recorded") {
          print('scan took Successfully');
          Get.snackbar('scan took Successfully', 'Attendance recorded',
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.green,
              colorText: Colors.white);
        }
      } else {
        print('there is a problem');
        print('scan failed');
        Get.snackbar(
            'scan did  not match !', 'please try again scannig your course QR',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } finally {}
  }

  Future<void> scanQR() async {
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff2D527E', 'cancel', true, ScanMode.QR);
      CallSubmitQr();
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
  }
}
