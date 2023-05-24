import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';
import '../Component/RoundedAppbar.dart';
import '../Controllers/GuestControllers/GetInfoController.dart';

class AboutUs extends GetView<GetInfoController> {
  GetInfoController controller = Get.put(GetInfoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => controller.isLoading.value
          ? Scaffold(
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    RoundedAppBar(
                      val: 0,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            'About Us',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontFamily: 'segoepr'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image(
                              height: 200,
                              image: AssetImage('Images/AboutUs.jpg'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25.0,
                          ),
                          child: Text(
                            controller.getInfoModel!.whoWeAre,
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              // wordSpacing: 2.5,
                              fontFamily: 'segoepr',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
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
