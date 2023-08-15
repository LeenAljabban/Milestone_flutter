import 'package:first/Controllers/GuestControllers/VerificationCodeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Component/IconContainer.dart';

class VerificationCode extends GetView<VerificationCodeController> {
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
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Text(
                        'Verification Code',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xff2D527E),
                          fontWeight: FontWeight.bold,
                          // wordSpacing: 2.5,
                          fontFamily: 'segoepr',
                        ),
                      ),
                    ),
                    Container(
                      height: 260,
                      child: Stack(
                        children: [
                          Center(
                            child: ClipOval(
                              child: Container(
                                color: Color(0xff2D527E),
                                height: 180.0, // height of the button
                                width: 180.0, // width of the button
                              ),
                            ),
                          ),
                          Center(
                            child: ClipOval(
                              child: Container(
                                  height: 170.0,
                                  // height of the button
                                  width: 170.0,
                                  // width of the button
                                  decoration: BoxDecoration(
                                    color: Color(0xff2D527E),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 23.0,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset('Images/verifyIcon.png')),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Please enter the 4 digit\n'
                      'code sent to your email',
                      style: TextStyle(color: Color(0xff707070), fontSize: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(85.0, 60, 85, 40),
                      child: PinCodeTextField(
                        controller: controller.PINController,
                        appContext: context,
                        length: 4,
                        onChanged: (d) {
                          print(controller.PINController.text);
                        },
                        obscureText: false,
                        animationType: AnimationType.scale,
                        textStyle: TextStyle(
                          color: Color(0xff2D527E),
                        ),
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(20),
                          fieldHeight: 55,
                          fieldWidth: 55,
                          borderWidth: 3,
                          inactiveColor: Colors.grey.shade500,
                          activeColor: Color(0xff2D527E),
                          selectedColor: Color(0xffEF5432),

                          // controller: textEditingController,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 260,
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
                          if (controller.PINController.text.length < 4 ||
                              controller.PINController.text.isEmpty) {
                            print('emptttty');

                            ///your flushbar
                          } else {
                            ///confirm OTP
                            controller.Callverify();
                            // Get.defaultDialog(
                            //     title: 'CODE DID NOT MATCH !',
                            //     titlePadding: EdgeInsets.only(top: 50),
                            //     contentPadding:
                            //         EdgeInsets.symmetric(horizontal: 20),
                            //     titleStyle: TextStyle(
                            //       color: Color(0xffEF5432),
                            //     ),
                            //     radius: 20,
                            //     barrierDismissible: false,
                            //     content: Container(
                            //       height: 200,
                            //       child: Center(
                            //         child: Text(
                            //           "We will send you another code in 15 seconds \n please wait... ",
                            //           textAlign: TextAlign.center,
                            //           style: TextStyle(
                            //               color: Color(0xff2D527E),
                            //               fontFamily: 'segoepr',
                            //               fontWeight: FontWeight.bold),
                            //         ),
                            //       ),
                            //     ));
                          }
                        },
                        child: const Text(
                          'Verify',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'segoepr',
                              fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Didn\'t Receive The Code ?',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Resend Code',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2D527E),
                        ),
                      ),
                    ),
                  ],
                ),
                IconContainer(
                  icon: Icons.arrow_back_ios_new,
                  iconColor: Colors.white,
                  containerColor: Color(0xff2D527E),
                  press: () {
                    Get.back();
                    // Get.back();
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
