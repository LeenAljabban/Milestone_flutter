import 'dart:io';

import 'package:first/Component/IconContainer.dart';
import 'package:first/Controllers/StudentsControllers/EditStudentProfileController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import '../../Component/EditTextField.dart';
import '../../global.dart';

class EditStudentProfile extends GetView<EditStudentProfileController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 220,
                  color: Color(0xffAFBBCB).withOpacity(0.8),
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 205,
                  color: Color(0xff2D527E).withOpacity(0.6),
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 190,
                  color: Color(0xff2D527E),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'segoepr',
                          fontWeight: FontWeight.bold),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 30),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 75,
                            child: Obx(
                              () => CircleAvatar(
                                backgroundImage: controller.file.value == ''
                                    ? NetworkImage(
                                        imageurl + controller.user.image)
                                    : FileImage(File(controller.file.value))
                                        as ImageProvider,
                                //NetworkImage
                                radius: 69,
                              ), //CircleAvatar
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0, top: 120),
                          child: IconButton(
                              onPressed: () {
                                controller.getImage();
                              },
                              icon: Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xffAFBBCB),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Icon(
                                  size: 20,
                                  Icons.camera_alt,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                    EditTextField(
                      icon: Icons.edit,
                      controller: controller.usernameController,
                    ),
                    EditTextField(
                      icon: Icons.edit,
                      controller: controller.emailController,
                    ),
                    EditTextField(
                      icon: Icons.edit,
                      controller: controller.birthdayController,
                    ),
                    EditTextField(
                      icon: Icons.edit,
                      controller: controller.phoneController,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 200,
                      height: 50,
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
                          controller.CallEditStudentProfile();
                        },
                        child: Text(
                          'Ok',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'segoepr',
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconContainer(
                icon: Icons.arrow_back_ios_new,
                iconColor: Color(0xff2D527E),
                containerColor: Colors.white,
                press: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
