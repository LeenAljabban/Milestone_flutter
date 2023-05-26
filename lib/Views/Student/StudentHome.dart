import 'package:carousel_slider/carousel_slider.dart';
import 'package:first/Views/Student/StudentSideBar.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:flutter/material.dart';
import '../../Component/IconContainer.dart';
import '../../Controllers/StudentsControllers/StudentHomeController.dart';
import 'package:get/get.dart';

class StudentHome extends StatelessWidget {
  StudentHomeController controller = Get.put(StudentHomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: controller.key,
        drawer: StudentSideBar(),
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 145,
                  color: Color(0xff2D527E),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 105,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              child: TimelineTile(
                                axis: TimelineAxis.horizontal,
                                alignment: TimelineAlign.center,
                                indicatorStyle: const IndicatorStyle(
                                  height: 18,
                                  color: Color(0xffEF5432),
                                ),
                                afterLineStyle: const LineStyle(
                                  color: Colors.white,
                                  thickness: 4,
                                ),
                                beforeLineStyle: const LineStyle(
                                  color: Colors.white,
                                  thickness: 4,
                                ),
                                endChild: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Sun',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffEF5432),
                                        // fontFamily: 'segoepr',
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              child: TimelineTile(
                                  axis: TimelineAxis.horizontal,
                                  alignment: TimelineAlign.center,
                                  indicatorStyle: const IndicatorStyle(
                                    height: 18,
                                    color: Colors.white,
                                  ),
                                  endChild: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Mon',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          // fontFamily: 'segoepr',
                                          fontSize: 15),
                                    ),
                                  ),
                                  afterLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  ),
                                  beforeLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: TimelineTile(
                                  axis: TimelineAxis.horizontal,
                                  alignment: TimelineAlign.center,
                                  indicatorStyle: const IndicatorStyle(
                                    height: 18,
                                    color: Color(0xffEF5432),
                                  ),
                                  endChild: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      'Tue',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffEF5432),
                                          // fontFamily: 'segoepr',
                                          fontSize: 15),
                                    ),
                                  ),
                                  afterLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  ),
                                  beforeLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: TimelineTile(
                                  axis: TimelineAxis.horizontal,
                                  alignment: TimelineAlign.center,
                                  indicatorStyle: const IndicatorStyle(
                                    height: 18,
                                    color: Colors.white,
                                  ),
                                  endChild: Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      'Wed',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          // fontFamily: 'segoepr',
                                          fontSize: 15),
                                    ),
                                  ),
                                  afterLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  ),
                                  beforeLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: TimelineTile(
                                  axis: TimelineAxis.horizontal,
                                  alignment: TimelineAlign.center,
                                  indicatorStyle: const IndicatorStyle(
                                    height: 18,
                                    color: Color(0xffEF5432),
                                  ),
                                  endChild: Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      'Thu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffEF5432),
                                          // fontFamily: 'segoepr',
                                          fontSize: 15),
                                    ),
                                  ),
                                  afterLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  ),
                                  beforeLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: TimelineTile(
                                  axis: TimelineAxis.horizontal,
                                  alignment: TimelineAlign.center,
                                  indicatorStyle: const IndicatorStyle(
                                    height: 18,
                                    color: Colors.white,
                                  ),
                                  endChild: Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      'Fri',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          // fontFamily: 'segoepr',
                                          fontSize: 15),
                                    ),
                                  ),
                                  afterLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  ),
                                  beforeLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: TimelineTile(
                                  axis: TimelineAxis.horizontal,
                                  alignment: TimelineAlign.center,
                                  indicatorStyle: const IndicatorStyle(
                                    height: 18,
                                    color: Colors.white,
                                  ),
                                  endChild: Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      'Sat',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          // fontFamily: 'segoepr',
                                          fontSize: 15),
                                    ),
                                  ),
                                  beforeLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  ),
                                  afterLineStyle: const LineStyle(
                                    color: Colors.white,
                                    thickness: 4,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Text(
                          '4:30 - 6:30',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'segoepr',
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Container(
                      width: 340,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff2D527E),
                              blurRadius: 7.0,
                            )
                          ],
                          border:
                              Border.all(color: Color(0xff2D527E), width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Search...',
                              labelStyle:
                                  TextStyle(color: Colors.grey.shade400),
                              suffixIcon: Icon(
                                Icons.search,
                                color: Color(0xff2D527E),
                                size: 30,
                              ),
                              enabledBorder: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 340,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff2D527E),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff2D527E),
                            blurRadius: 5.0,
                          )
                        ],
                        border: Border.all(color: Color(0xff2D527E), width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('View HomeWorks',
                              style: TextStyle(
                                fontFamily: 'segoepr',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                //height: -1.5
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Text(
                    'Educational Content :',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'segoepr',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D527E),
                    ),
                  ),
                ),
                CarouselSlider.builder(
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1.0,
                        )
                      ],
                      border: Border.all(color: Color(0xff2D527E), width: 3),
                    ),
                    width: 80,
                    child: Center(
                      child: Text(
                        'A1',
                        style: TextStyle(
                            color: Color(0xff2D527E),
                            fontFamily: 'segoepr',
                            fontWeight: FontWeight.w600,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    height: 80,
                    viewportFraction: 0.25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Our Advertisment :',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'segoepr',
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D527E),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          'see all',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            color: Color(0xff2D527E),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Obx(
                  () => controller.isLoading.value
                      ? CarouselSlider.builder(
                          itemCount: controller.advertisments.length,
                          itemBuilder: (BuildContext context, int itemIndex,
                                  int pageViewIndex) =>
                              InkWell(
                            onTap: () => Get.toNamed('/ReserveAdvertisment',
                                arguments:
                                    controller.advertisments[itemIndex].id),
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
                                    color: Color(0xff2D527E), width: 1),
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
                                          'http://192.168.1.106:8000/${controller.advertisments[itemIndex].image}'),
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
                                            color: Color(0xff2D527E),
                                            blurRadius: 7.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 3)),
                                    child: Center(
                                      child: Text(
                                        controller
                                            .advertisments[itemIndex].title,
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: 'segoepr',
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff2D527E),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          options: CarouselOptions(
                            height: 240,
                            viewportFraction: 0.9,
                            autoPlay: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            //enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                            // enlargeFactor: 0.5,
                            enableInfiniteScroll: true,
                          ),
                        )
                      : Container(
                          child: CircularProgressIndicator(),
                        ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
            IconContainer(
                icon: Icons.menu,
                iconColor: Color(0xff2D527E),
                containerColor: Colors.white,
                press: () {}),
          ]),
        ),
      ),
    );
  }
}
