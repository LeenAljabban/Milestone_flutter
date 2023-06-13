import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../Controllers/TeacherControllers/LeaveRequestController.dart';
import '../../Controllers/TeacherControllers/Resignationrequestcontroller.dart';

class ResignationRequest extends StatelessWidget {
  ResignationRequestController controller =
      Get.put(ResignationRequestController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 130,
                        color: Color(0xffAFBBCB).withOpacity(0.8),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 120,
                        color: Color(0xff2D527E).withOpacity(0.6),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 110,
                        color: Color(0xff2D527E),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: Text(
                          'Resignation Request',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'segoepr',
                              fontWeight: FontWeight.bold),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'write your reason :',
                        style: TextStyle(
                          color: Color(0xff2D527E),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'segoepr',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: SizedBox(
                          width: 320,
                          child: TextFormField(
                            controller: controller.textController,
                            maxLines: 4,
                            style: TextStyle(
                                color: Colors.grey.shade500,
                                fontFamily: 'segoepr',
                                fontSize: 15),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Color(0xff2D527E),
                                  width: 2,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Color(0xff2D527E),
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
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
                      //controller.reason = controller.textController.text;
                      controller.CallSubmitrequest();
                      Get.back();
                    },
                    child: Text(
                      'Submit Request',
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'segoepr',
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
