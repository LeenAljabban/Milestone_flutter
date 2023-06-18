import 'package:first/Controllers/NotificationControler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';
import '../Controllers/AllAdsController.dart';

class AllAds extends StatelessWidget {
  AllAdsController controller = Get.put(AllAdsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() => controller.isLoading3.value
          ? Scaffold(
              body: Stack(
              children: [
                controller.advertisments.length != 0
                    ? SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 96),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.advertisments.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () => controller
                                                  .advertisments[index]
                                                  .advertismentTypeId ==
                                              1
                                          ? Get.toNamed('/ReserveAdvertisment',
                                              arguments: controller
                                                  .advertisments[index].id)
                                          : Get.toNamed('/JobAdvertisment',
                                              arguments: controller
                                                  .advertisments[index]),
                                      child: Padding(
                                        padding: const EdgeInsets.all(26.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            // borderRadius: BorderRadius.circular(10.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.shade200,
                                                blurRadius: 1.0,
                                              )
                                            ],
                                            border: Border.all(
                                                color: Color(0xff2D527E),
                                                width: 1),
                                          ),
                                          width: 330,
                                          child: Column(
                                            children: [
                                              ClipRRect(
                                                //borderRadius: BorderRadius.circular(10.0),
                                                child: Image(
                                                  height: 200,
                                                  width: 330,
                                                  fit: BoxFit.fill,
                                                  image: NetworkImage(
                                                      'http://192.168.1.8:8000/${controller.advertisments[index].image}'),
                                                ),
                                              ),
                                              Container(
                                                height: 38,
                                                width: 330,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    //borderRadius: BorderRadius.circular(10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            Color(0xff2D527E),
                                                        blurRadius: 7.0,
                                                      )
                                                    ],
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff2D527E),
                                                        width: 3)),
                                                child: Center(
                                                  child: Text(
                                                    controller
                                                        .advertisments[index]
                                                        .title,
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: 'segoepr',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xff2D527E),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )
                    : Center(
                        child: Text(
                          'There is no notifications..',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff2D527E),
                            fontFamily: 'segoepr',
                          ),
                        ),
                      ),
                ClipPath(
                  clipper: WaveClipperTwo(
                    flip: true,
                  ),
                  child: Container(
                    height: 113,
                    color: Color(0xffAFBBCB),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 113,
                    color: Color(0xff2D527E),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Text(
                        "Advertisments",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: 'segoepr',
                        ),
                      ),
                    )),
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
            ))
          : Scaffold(body: Center(child: CircularProgressIndicator()))),
    );
  }
}
