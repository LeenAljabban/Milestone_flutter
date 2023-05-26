import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class QrScannerController extends GetxController {
  Color blue = Color(0xff2D527E);
  String barcodeScanRes = '';

  Future<void> scanQR() async {
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff2D527E', 'cancel', true, ScanMode.QR);
      Get.snackbar('the resualt', 'QR code' + barcodeScanRes,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
  }
}
