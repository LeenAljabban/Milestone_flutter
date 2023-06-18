import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';
import '../Controllers/GuestControllers/GuestInformationControllers.dart';

class GuestInformation extends GetView<GuestInformationController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(
          new FocusNode(),
        );
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Stack(
              // clipBehavior: Clip.none,
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      color: Color(0xff2D527E),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      color: Colors.white,
                    ),
                  ],
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                      child: Text(
                        'Enter your information',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'segoepr',
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -15.0,
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: 880,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Frist name :',
                                    style: TextStyle(
                                        color: Color(0xff2D527E),
                                        fontFamily: 'segoepr',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                                TextField(
                                  controller: controller.firstnameController,
                                  decoration: InputDecoration(
                                    labelText: 'Enter your frist name',

                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 0.5),
                                    // icon: Icon(Icons.person),
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15),
                                    suffixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey.shade400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Last Name:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        fontFamily: 'segoepr',
                                        fontSize: 18),
                                  ),
                                ),
                                TextField(
                                  controller: controller.lastnameController,
                                  decoration: InputDecoration(
                                    labelText: 'Enter your last name',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 1),
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15),
                                    suffixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey.shade400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Education:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        fontFamily: 'segoepr',
                                        fontSize: 18),
                                  ),
                                ),
                                TextField(
                                  controller: controller.educationController,
                                  decoration: InputDecoration(
                                    labelText: 'Enter your Education',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 1),
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15),
                                    suffixIcon: Icon(
                                      Icons.cast_for_education_outlined,
                                      color: Colors.grey.shade400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Email:',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        fontFamily: 'segoepr',
                                        fontSize: 18),
                                  ),
                                ),
                                TextField(
                                  controller: controller.emailController,
                                  decoration: InputDecoration(
                                    labelText: 'Enter your Email',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 1),
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15),
                                    suffixIcon: Icon(
                                      Icons.email,
                                      color: Colors.grey.shade400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    'Phone Number :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        fontFamily: 'segoepr',
                                        fontSize: 18),
                                  ),
                                ),
                                TextField(
                                  controller: controller.phoneNumberController,
                                  decoration: InputDecoration(
                                    labelText: 'Enter your phone number',
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 1),
                                    labelStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15),
                                    suffixIcon: Icon(
                                      Icons.phone,
                                      color: Colors.grey.shade400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.only(bottom: 10.0),
                                //   child: Text(
                                //     'Address :',
                                //     style: TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         color: Color(0xff2D527E),
                                //         fontFamily: 'segoepr',
                                //         fontSize: 18),
                                //   ),
                                // ),
                                // TextField(
                                //   // controller: controller.phoneNumberController,
                                //   decoration: InputDecoration(
                                //     labelText: 'Enter your phone number',
                                //     floatingLabelBehavior:
                                //         FloatingLabelBehavior.never,
                                //     contentPadding:
                                //         EdgeInsets.symmetric(vertical: 1),
                                //     labelStyle: TextStyle(
                                //         color: Colors.grey.shade400,
                                //         fontSize: 15),
                                //     suffixIcon: Icon(
                                //       Icons.phone,
                                //       color: Colors.grey.shade400,
                                //     ),
                                //     enabledBorder: UnderlineInputBorder(
                                //       borderSide: BorderSide(
                                //           color: Colors.grey.shade400),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        shadowColor: Colors.white,
                        elevation: 3,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Positioned(
                  bottom: 10,
                  left: 110,
                  right: 110,
                  child: SizedBox(
                    height: 70,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff2D527E),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Get.defaultDialog(
                        //   title: '',
                        //   backgroundColor: Colors.transparent,
                        //   barrierDismissible: true,
                        //   content: CircularProgressIndicator(),
                        // );
                        controller.CallGuestInformation();
                      },
                      child: Obx(
                        () => controller.send.value
                            ? Text(
                                'Continue',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'segoepr',
                                    fontSize: 18),
                              )
                            : CircularProgressIndicator(),
                      ),
                    ),
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
        ),
      ),
    );
  }
}
