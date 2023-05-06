import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Controllers/GuestControllers/PlacementTestController.dart';

class PlacementTest extends GetView<PlacementTestController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xff2D527E),
              height: 150,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                        () =>
                        buildTimeCard(
                            time: controller.hours.value.toString(),
                            header: 'HOURS'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Obx(
                        () =>
                        buildTimeCard(
                            time: controller.minutes.value.toString(),
                            header: 'MINUTES'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Obx(
                        () =>
                        buildTimeCard(
                            time: controller.seconds.toString(),
                            header: 'SECONDS'),
                  ),

                ],
              ),
            ),
         
          ],
        ),
      ),
    );
  }

  Widget buildTimeCard({required String time, required String header}) =>
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              // border: Border.all(
              //   color: Color(0xff2D527E),
              // ),
            ),
            child: Text(
              time,
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Color(0xff2D527E),
                fontFamily: 'segoepr',
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            header,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          )
        ],
      );
}
