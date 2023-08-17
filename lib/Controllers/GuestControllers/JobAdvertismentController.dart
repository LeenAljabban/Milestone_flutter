import 'package:file_picker/file_picker.dart';
import 'package:first/Models/AdvertismentModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Services/JobAdvertismentService.dart';
import '../../global.dart';

class JobAdvertismentController extends GetxController {
  AdvertismentModel adv = AdvertismentModel();
  FilePickerResult? result;
  PlatformFile? file;
  String path = '';
  RxString token = ''.obs;

  @override
  Future<void> onInit() async {
    adv = Get.arguments;
    token.value = await getFromSharedPreferences('token');

    super.onInit();
  }

  Future pickfile() async {
    result = await FilePicker.platform.pickFiles();
    file = result!.files.single;
    path = result!.files.single.path!;
    update();
  }

  CallUploadCv(advertisment_id) async {
    try {
      var data = await JobAdvertismentService.UploadCv(
          'uploadCv', path, advertisment_id);
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
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
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
