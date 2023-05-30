import 'package:file_picker/file_picker.dart';
import 'package:first/Services/UploadHomeworkService.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UploadHomeworkController extends GetxController {
  FilePickerResult? result;
  PlatformFile? file;
  RxString refreshScreen = 'Select file'.obs;
  String path = '';
  late TextEditingController noteController;

  @override
  void onInit() {
    noteController = TextEditingController();
  }

  @override
  void dispose() {
    noteController.dispose();

    super.dispose();
  }

  Future pickfile() async {
    result = await FilePicker.platform.pickFiles();
    file = result!.files.single;
    path = result!.files.single.path!;
    refreshScreen.value = file!.name;
    update();
  }

  CallUploadHomework() async {
    try {
      var data = await UploadHomeworkService.UploadHomework(
          'teacher/upload/Homework', 2, path, noteController.text);
      if (data != null) {
        Get.defaultDialog(
          title: 'Home work Uploaded Secssuflly!',
          titlePadding: EdgeInsets.only(top: 50),
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          titleStyle: TextStyle(
            color: Color(0xffEF5432),
          ),
          radius: 20,
          // barrierDismissible: false,
          // content: Container(
          //   height: 200,
          //   child: Center(
          //     child: Text(
          //       "We will send you another code in 15 seconds \n please wait... ",
          //       textAlign: TextAlign.center,
          //       style: TextStyle(
          //           color: Color(0xff2D527E),
          //           fontFamily: 'segoepr',
          //           fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // ),
        );
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
