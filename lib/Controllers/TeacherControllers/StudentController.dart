import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../Models/EducationalContentModel.dart';
import '../../Models/StudentModel.dart';
import '../../Services/EducationalContentService.dart';
import '../../Services/GetStudentsService.dart';

class StudentController extends GetxController {
  var isLoading = false.obs;
  List<CoursesStudents> student_list = [];

  CallGetStudent(int index) async {
    try {
      var data = await GetStudentService.GetStudents(
          'teacher/get/courseStudent/' + index.toString());
      if (data != null) {
        student_list.addAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading(true);
    }
  }

  void onInit() {
    try {
      CallGetStudent(Get.arguments);
    } finally {}
  }
}
