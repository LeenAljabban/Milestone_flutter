import 'package:first/Controllers/StudentsControllers/ReserveController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../global.dart';

class ReserveAdvertisment extends GetView<ReserveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(
      () => controller.isLoading.value
          ? Scaffold(
              body: SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      child: Image(
                        image: NetworkImage(imageurl + controller.adv.image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 220.0,
                        // right: 5, left: 5
                      ),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey.shade500,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        shadowColor: Colors.white,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(minHeight: 600),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blue.shade900,
                                  blurRadius: 5,
                                  offset: Offset(0.5, 1), // Shadow position
                                ),
                                BoxShadow(
                                  color: Colors.indigo.shade50,
                                ),
                                const BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: -20.0,
                                  blurRadius: 15.0,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    '- course level :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        // fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    controller.adv.course.course_name,
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  const Text(
                                    '\n- Course time :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        // fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    '3:00-6:00'
                                    // controller.adv.course.startHour
                                    //         .substring(0, 5) +
                                    //     ' - ' +
                                    //     controller.adv.course.endHour
                                    //         .substring(0, 5)
                                    ,
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  const Text(
                                    '\n- Course Days :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        // fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    controller.adv.course.days![0].name +
                                        ' - ' +
                                        controller.adv.course.days![1].name
                                    // +' - '+
                                    // controller.adv.course.days[2].name
                                    ,
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  const Text(
                                    '\n- Course Teacher :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        // fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Mr- Mumayaz Allan',
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    '\n- Begin/End Date :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff2D527E),
                                        // fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  Text(
                                    controller.adv.course.startDay.day
                                            .toString() +
                                        '-' +
                                        controller.adv.course.startDay.month
                                            .toString() +
                                        '-' +
                                        controller.adv.course.startDay.year
                                            .toString() +
                                        ' / ' +
                                        controller.adv.course.endDay.day
                                            .toString() +
                                        '-' +
                                        controller.adv.course.endDay.month
                                            .toString() +
                                        '-' +
                                        controller.adv.course.endDay.year
                                            .toString(),
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontFamily: 'segoepr',
                                        fontSize: 20),
                                  ),
                                  Obx(
                                    () => controller.token != ''
                                        ? Center(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 30.0),
                                              child: SizedBox(
                                                height: 50,
                                                width: 250,
                                                child: TextButton(
                                                  style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(
                                                      Color(0xff2D527E),
                                                    ),
                                                    shape: MaterialStateProperty
                                                        .all(
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22),
                                                      ),
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    controller.CallReserve();
                                                  },
                                                  child: Text(
                                                    'Reserve',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontFamily: 'segoepr',
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        : Container(),
                                  ),
                                ],
                              ),
                            ),
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
            )
          : Scaffold(body: Center(child: CircularProgressIndicator())),
    ));
  }
}
