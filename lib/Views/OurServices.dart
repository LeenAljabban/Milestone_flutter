import 'package:first/Component/RoundedAppbar.dart';
import 'package:first/Models/GetInfoModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';
import '../Controllers/GuestControllers/GetInfoController.dart';

class OurServices extends GetView<GetInfoController> {
  GetInfoController controller = Get.put(GetInfoController());

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
                      height: MediaQuery.of(context).size.height * 0.55,
                      color: Colors.white,
                    ),
                    RoundedAppBar(
                      val: 130,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 35.0),
                            child: Text(
                              'Our Services',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'segoepr'),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Card(
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
                              height: 420,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                    ),
                                    child: Text(
                                      controller.getInfoModel!.services,
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff2D527E),
                                          fontFamily: 'segoepr'),
                                    ),
                                  ),
                                ],
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
            )
          : Scaffold(body: Center(child: CircularProgressIndicator())),
    ));
  }
}
