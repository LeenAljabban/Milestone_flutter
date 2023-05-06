import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class QrScannerController extends GetxController {
  Color blue = Color(0xff2D527E);
  String barcodeScanRes = '';

  // final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  // Barcode? result;
  // Rx<QRViewController>? controller;
  //
  // void onQRViewCreated(QRViewController controller) {
  //   this.controller?.value = controller;
  //   update();
  //   controller.scannedDataStream.listen((scanData) {
  //     result = scanData;
  //     update();
  //   });
  // }
  //
  // // @override
  // // void dispose() {
  // //   controller?.dispose();
  // //   super.dispose();
  // // }

  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff2D527E', 'Cancel', true, ScanMode.QR)!
        .listen((barcode) => print(barcode));
  }

  Future<void> scanQR() async {
    try {
      print('object');
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '0xff2D527E', 'cancel', true, ScanMode.QR);
      Get.snackbar('the resualt', 'QR code' + barcodeScanRes,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
  }
}
