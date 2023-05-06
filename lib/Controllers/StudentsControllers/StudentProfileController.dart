import 'package:first/Models/UserModel.dart';
import 'package:get/get.dart';

import '../../Services/StudentProfileService.dart';

class StudentProfileController extends GetxController {
  UserModel user = UserModel();

  var isLoading = false.obs;

  @override
  void onInit() {
    CallStudentProfile();
  }

  CallStudentProfile() async {
    try {
      isLoading(false);
      var data = await StudentProfileService.StudentProfile(
        'student/viewprofile',
      );
      if (data != null) {
        user = data;
      } else {
        print('Try again');
      }
    } finally {
      isLoading(true);
    }
  }
}
