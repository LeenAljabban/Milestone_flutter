import 'package:first/Controllers/TeacherControllers/TeacherProfileController.dart';
import 'package:first/Models/UserModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../Services/EditTeacherProfileService.dart';

class EditTeacherProfileController extends GetxController {
  TeacherProfileController controller = Get.put(TeacherProfileController());
  Color blue = Color(0xff2D527E);
  late TextEditingController usernameController,
      emailController,
      birthdayController,
      phoneController;
  UserModel user = UserModel();
  var file = ''.obs;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    file.value = image.path;
  }

  @override
  void onInit() {
    user = Get.arguments;
    usernameController = TextEditingController();

    emailController = TextEditingController();
    birthdayController = TextEditingController();
    phoneController = TextEditingController();
    usernameController.text = user.username;
    emailController.text = user.email;
    birthdayController.text = user.birthdate;
    phoneController.text = user.phone;
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    birthdayController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  CallEditTeacherProfile() async {
    try {
      var data = await EditTeacherProfileService.EditTeacherProfile(
        'teacher/editprofile',
        usernameController.text,
        emailController.text,
        phoneController.text,
        birthdayController.text,
        file.value,
      );
      if (data != null) {
        Get.back();
        controller.CallTeacherProfile();
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
