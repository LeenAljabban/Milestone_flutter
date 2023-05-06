import 'package:first/Services/EditStudentProfileService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../Models/UserModel.dart';
import 'StudentProfileController.dart';
import 'dart:io';

class EditStudentProfileController extends GetxController {
  StudentProfileController controller = Get.put(StudentProfileController());
  UserModel user = UserModel();
  Color blue = Color(0xff2D527E);

  late TextEditingController usernameController,
      emailController,
      birthdayController,
      phoneController;
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

  CallEditStudentProfile() async {
    try {
      var data = await EditStudentProfileService.EditStudentProfile(
        'student/editprofile',
        usernameController.text,
        emailController.text,
        phoneController.text,
        birthdayController.text,
        file.value,
      );
      if (data != null) {
        Get.back();
        controller.CallStudentProfile();
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}
