import 'package:first/Models/UserModel.dart';
import 'package:first/Services/TeacherProfileService.dart';
import 'package:get/get.dart';

import '../../Services/StudentProfileService.dart';

class TeacherProfileController extends GetxController {
  UserModel user = UserModel();

  var isLoading = false.obs;

  @override
  void onInit() {
    CallTeacherProfile();
  }

  void CallTeacherProfile() async {
    try {
      isLoading(false);
      var data = await TeacherProfileService.TeacherProfile(
        'teacher/viewprofile',
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
