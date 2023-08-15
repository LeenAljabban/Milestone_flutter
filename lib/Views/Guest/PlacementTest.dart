import 'package:first/Views/Guest/question_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Controllers/GuestControllers/PlacementTestController.dart';

class PlacementTest extends GetView<PlacementTestController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.defaultDialog(
          titleStyle: const TextStyle(
            color: Color(0xff2D527E),
            fontFamily: 'segoepr',
            fontWeight: FontWeight.bold,
          ),
          title: 'Are you sure you want to end the test ?',
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  controller.CallSubmitAnswers();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 3,
                      color: Color(0xff2D527E),
                    ),
                  ),
                  width: 70,
                  child: const Center(
                    child: Text(
                      'yes',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2D527E),
                        fontFamily: 'segoepr',
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      width: 3,
                      color: Color(0xff2D527E),
                    ),
                  ),
                  width: 70,
                  child: const Center(
                    child: Text(
                      'No',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2D527E),
                        fontFamily: 'segoepr',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
        return false; // Action to perform on back pressed
      },
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            SafeArea(
              child: GetBuilder<PlacementTestController>(
                  init: PlacementTestController(),
                  builder: (controller) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          color: Color(0xff2D527E),
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Text(
                                  'The Remaining Time',
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'segoepr',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Obx(
                                    () => buildTimeCard(
                                        time: controller.hours.value.toString(),
                                        header: 'HOURS'),
                                  ),
                                  Text(
                                    ' : ',
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'segoepr',
                                      fontSize: 25,
                                    ),
                                  ),
                                  Obx(
                                    () => buildTimeCard(
                                        time:
                                            controller.minutes.value.toString(),
                                        header: 'MINUTES'),
                                  ),
                                  const Text(
                                    ' : ',
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'segoepr',
                                      fontSize: 25,
                                    ),
                                  ),
                                  Obx(
                                    () => buildTimeCard(
                                        time: controller.seconds.toString(),
                                        header: 'SECONDS'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                    text: 'Question ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                            color: Color(0xff2D527E),
                                            fontFamily: 'segoepr',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                    children: [
                                      TextSpan(
                                          text: controller.numberOfQuestion
                                              .round()
                                              .toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(
                                                  color: Color(0xff2D527E),
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'segoepr',
                                                  fontSize: 25)),
                                      // TextSpan(
                                      //     text: '/',
                                      //     style: Theme.of(context)
                                      //         .textTheme
                                      //         .headline5!
                                      //         .copyWith(
                                      //             color: Color(0xff2D527E),
                                      //             fontFamily: 'segoepr',
                                      //             fontSize: 25,
                                      //             fontWeight: FontWeight.bold)),
                                      // TextSpan(
                                      //     text: 'dd',
                                      //     // controller.countOfQuestion.toString(),
                                      //     style: Theme.of(context)
                                      //         .textTheme
                                      //         .headline5!
                                      //         .copyWith(
                                      //           color: Color(0xff2D527E),
                                      //           fontWeight: FontWeight.bold,
                                      //           fontFamily: 'segoepr',
                                      //           fontSize: 25,
                                      //         )),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: PageView.builder(
                              controller: controller.pageController,
                              itemCount: controller.questionsList.length,
                              scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Obx(
                                  () => controller.loading.value
                                      ? QuestionCard(
                                          questiondataModel:
                                              controller.questionsList[index],
                                          questionIndex: index,
                                        )
                                      : Center(
                                          child: CircularProgressIndicator()),
                                );
                              }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              controller.numberOfQuestion == 1
                                  ? Container()
                                  : Align(
                                      alignment: Alignment.bottomLeft,
                                      child: FloatingActionButton(
                                        onPressed: () =>
                                            controller.preQuestion(),
                                        backgroundColor: Color(0xff2D527E),
                                        child: Icon(
                                          Icons.navigate_before,
                                          size: 40,
                                        ),

                                        // shape: CircleBorder(eccentricity: 10),
                                      ),
                                    ),
                              controller.last
                                  ? Align(
                                      alignment: Alignment.bottomRight,
                                      child: FloatingActionButton.extended(
                                        onPressed: () => {
                                          Get.defaultDialog(
                                            titleStyle: const TextStyle(
                                              color: Color(0xff2D527E),
                                              fontFamily: 'segoepr',
                                              fontWeight: FontWeight.bold,
                                            ),
                                            title:
                                                'Are you sure you want to end the test ?',
                                            content: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    controller
                                                        .CallSubmitAnswers();
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade300,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        width: 3,
                                                        color:
                                                            Color(0xff2D527E),
                                                      ),
                                                    ),
                                                    width: 70,
                                                    child: const Center(
                                                      child: Text(
                                                        'yes',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff2D527E),
                                                          fontFamily: 'segoepr',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () => Get.back(),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.grey.shade300,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        width: 3,
                                                        color:
                                                            Color(0xff2D527E),
                                                      ),
                                                    ),
                                                    width: 70,
                                                    child: Center(
                                                      child: Text(
                                                        'No',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Color(0xff2D527E),
                                                          fontFamily: 'segoepr',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        },
                                        backgroundColor: Color(0xff2D527E),
                                        label: Text(
                                          'End test',
                                        ),
                                      ))
                                  : Align(
                                      alignment: Alignment.bottomRight,
                                      child: FloatingActionButton(
                                        onPressed: () =>
                                            controller.nextQuestion(),
                                        backgroundColor: Color(0xff2D527E),
                                        child: Icon(
                                          Icons.navigate_next,
                                          size: 40,
                                        ),
                                      ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
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
            height: 50,
            width: 60,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // border: Border.all(
              //   color: Color(0xff2D527E),
              // ),
            ),
            child: Center(
              child: Text(
                time,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEF5432),
                  fontFamily: 'segoepr',
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            header,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'segoepr',
            ),
          )
        ],
      );
}
