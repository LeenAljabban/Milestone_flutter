import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';
import '../Controllers/GuestControllers/GetInfoController.dart';

class ContactUs extends GetView<GetInfoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => controller.isLoading.value
          ? Scaffold(
              backgroundColor: Color(0xff2D527E),
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Center(
                            child: Image(
                              image: AssetImage('Images/img.png'),
                              height: 170,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                                //   fontWeight: FontWeight.bold,
                                color: Color(0xff2D527E),
                                fontFamily: 'segoepr',
                                fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(minHeight: 200),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.shade900,
                                    blurRadius: 5,
                                    offset: Offset(0.5, 1), // Shadow position
                                  ),
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
                              width: 340,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              controller
                                                  .getInfoModel!.contactUs,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff2D527E),
                                                  // fontFamily: 'segoepr',
                                                  fontSize: 20),
                                            ),
                                          ),
                                          Icon(
                                            Icons.phone_in_talk,
                                            color: Color(0xff2D527E),
                                            size: 30,
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5.0),
                                              child: Text(
                                                controller.getInfoModel!.email,
                                                textAlign: TextAlign.center,
                                                // overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff2D527E),
                                                    // fontFamily: 'segoepr',
                                                    fontSize: 18),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.email,
                                            size: 30,
                                            color: Color(0xff2D527E),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
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
                      ],
                    ),
                    IconContainer(
                      icon: Icons.arrow_back_ios_new,
                      iconColor: Colors.white,
                      containerColor: Color(0xff2D527E),
                      press: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              ),
            )
          : Scaffold(body: Center(child: CircularProgressIndicator())),
    ));
  }
}
