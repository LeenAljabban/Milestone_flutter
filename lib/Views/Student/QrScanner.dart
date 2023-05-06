import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/StudentsControllers/QrScannerController.dart';

class QrScanner extends StatelessWidget {
  QrScannerController controller = Get.put(QrScannerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // child: QRView(
      //   cameraFacing: CameraFacing.back,
      //   // Use the rear camera
      //   key: controller.qrKey,
      //   // The global key for the scanner
      //   onQRViewCreated: controller.onQRViewCreated,
      //   // Function to call after the QR View is created
      //   overlay: QrScannerOverlayShape(
      //     // Configure the overlay to look nice
      //     borderRadius: 10,
      //     borderWidth: 5,
      //     borderColor: Colors.white,
      //   ),
      // ),
      child: Center(
        child: Container(
          height: 50,
          width: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: controller.blue, // Background color
            ),
            onPressed: () {
              controller.startBarcodeScanStream();
            },
            child: Text('Scan Qr'
                // color: Colors.deepPurple,
                ),
          ),
        ),
      ),
    ));
  }
}
