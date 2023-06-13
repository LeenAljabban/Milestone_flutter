import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../Models/EducationalContentModel.dart';
import '../../Services/EducationalContentService.dart';

class EducationalContentController extends GetxController {
  var isLoading = false.obs;
  List<EducationalContentModel> educationalcontent_list = [];
  late Uri mp3Url;
  AudioPlayer audioPlayer = AudioPlayer();

  CallEducationalContent(int index) async {
    try {
      var data = await EducationalContentService.GetEducationalContent(
          'student/get/educationFile', index);
      if (data != null) {
        educationalcontent_list.addAll(data);
        // String url =
        //     'http://localhost:8000/${educationalcontent_list[index].file}';
        // url = url.replaceAll('\\', '/');
        // print("//////////////////////////////////*************************");
        // print(url);
        // audioPlayer.setSourceUrl(url);
        // audioPlayer.play(audioPlayer.source!);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading(true);
    }
  }

  void onInit() {
    try {
      CallEducationalContent(Get.arguments);
    } finally {}
  }

  // void playMp3() async {
  //   await audioPlayer.play(audioPlayer.source!);
  // }

  @override
  void onClose() {
    audioPlayer.stop();
    super.onClose();
  }
}
