import 'package:file_picker/file_picker.dart';
import 'package:first/Models/UserModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Services/JobAdvertismentService.dart';
import '../../Services/StudentProfileService.dart';

class Guestsidebarcontroller extends GetxController {
  FilePickerResult? result;
  PlatformFile? file;
  String path = '';
  var isLoading = false.obs;
  RxString token = ''.obs;

  @override
  void onInit() {}

  Future pickfile() async {
    result = await FilePicker.platform.pickFiles();
    file = result!.files.single;
    path = result!.files.single.path!;
    update();
  }

  CallUploadCv() async {
    try {
      var data =
          await JobAdvertismentService.UploadCv('uploadCv', path, "null");
      if (data != null) {
        Get.defaultDialog(
          title: 'Cv Uploaded Secssuflly',
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
