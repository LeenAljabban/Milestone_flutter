import 'dart:io';

import 'package:first/Models/HomeworkModel.dart';
import 'package:first/Services/HomeWorkService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
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
  }

  bool fileExists(String path) {
    final file = File(path);
    return file.existsSync();
  }
}
