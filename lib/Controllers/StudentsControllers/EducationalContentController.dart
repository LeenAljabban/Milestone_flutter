import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Models/EducationalContentModel.dart';
import '../../Services/EducationalContentService.dart';

class EducationalContentController extends GetxController {
  var isLoading = false.obs;
  List<EducationalContentModel> educationalcontent_list = [];
  CallStudentHomeAdvertisment() async {
    try {
      var data = await EducationalContentService.GetEducationalContent(
        'student/get/educationFile',
      );
      if (data != null) {
        educationalcontent_list.addAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading(true);
    }
  }
}
