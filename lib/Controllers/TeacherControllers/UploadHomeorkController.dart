import 'package:file_picker/file_picker.dart';

import 'package:get/get.dart';

class UploadHomeworkController extends GetxController {
  FilePickerResult? result;
  PlatformFile? file;
  RxString refreshScreen = 'Select file'.obs;
  String? path;

  Future pickfile() async {
    result = await FilePicker.platform.pickFiles();

    file = result!.files.single;

    path = result!.files.single.path;
    refreshScreen.value = file!.name;
    update();
  }
}
