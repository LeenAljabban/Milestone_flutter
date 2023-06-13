import 'dart:io';

import 'package:first/Models/HomeworkModel.dart';
import 'package:first/Services/HomeWorkService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeWorkController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxBool isloading = false.obs;
  List<HomeworkModel> homework = [];

  @override
  void onInit() {
    CallViewHomeWork();
  }

  Future<void> CallViewHomeWork() async {
    try {
      var data =
          await HomeWorkService.ViewHomeWork('student/get/courseHomework');
      if (data != null) {
        homework = data;
      } else {
        print('there is a problem');
      }
    } finally {
      isloading(true);
    }
  }

  void downloadFile(url) async {
    final status = await Permission.storage.request();
    if (status != PermissionStatus.granted) {
      throw Exception('Permission denied to access storage');
    }

    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;
    final fileName = url.split('\\').last;
    final downloadDir = Directory('/storage/emulated/0/Download');
    if (!await downloadDir.exists()) {
      await downloadDir.create(recursive: true);
    }

    final file = File('${downloadDir.path}/$fileName');
    await file.writeAsBytes(bytes);

    final isFileExist = await file.exists();
    print('File exists: $isFileExist');
    if (isFileExist) {
      Get.defaultDialog(
          title: 'File Downloaded successfully',
          titlePadding: EdgeInsets.only(top: 20, left: 7, right: 7),
          titleStyle: TextStyle(
              color: Color(0xff2D527E),
              fontFamily: 'segoepr',
              fontWeight: FontWeight.bold),
          radius: 20,
          barrierDismissible: false,
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Center(
                  child: Text(
                    "Please check your Download Directory",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff2D527E),
                        fontFamily: 'segoepr',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              /////////////////////////////////////////////////////////////////////
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    blue,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'OK',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'segoepr',
                        fontSize: 20),
                  ),
                ),
              ),

              ///////////////////////////////////////////////////////////////////
            ],
          ));
    }
  }

  bool fileExists(String path) {
    final file = File(path);
    return file.existsSync();
  }
}
