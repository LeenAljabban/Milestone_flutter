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
          title: 'Home work Uploaded Secssuflly',
          titlePadding: EdgeInsets.only(top: 20, left: 7, right: 7),
          titleStyle: TextStyle(
              color: Color(0xffEF5432),
              fontFamily: 'segoepr',
              fontWeight: FontWeight.bold),
          radius: 20,
          content: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(0xff2D527E),
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
              ),
            ],
          ),
        );
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
