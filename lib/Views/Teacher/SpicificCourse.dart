import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

import '../../Component/IconContainer.dart';

class SpecificCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color(0xff2D527E),
                      //borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Text(
                            'A1 course',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                // fontFamily: 'segoepr',
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 70,
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
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
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
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
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
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
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
                                        padding:
                                            const EdgeInsets.only(top: 10.0),
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
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              '4:30 - 6:30',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'segoepr',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Text(
                            'room 1',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'segoepr',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 500),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          //borderRadius: BorderRadius.circular(10),

                          // border:
                          //     Border.all(color: Color(0xff2D527E), width: 7),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 160,
                                    height: 155,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff2D527E),
                                            blurRadius: 5.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 2)),
                                    child: Center(
                                      child: Text('presentations',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'segoepr',
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            //height: -1.5
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 160,
                                    height: 155,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff2D527E),
                                            blurRadius: 5.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 2)),
                                    child: Center(
                                      child: Text('Educational \n content',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'segoepr',
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            //height: -1.5
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 160,
                                    height: 155,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff2D527E),
                                            blurRadius: 5.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 2)),
                                    child: Center(
                                      child: Text('Upload\n homework',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'segoepr',
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            //height: -1.5
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 160,
                                    height: 155,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff2D527E),
                                            blurRadius: 5.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 2)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Center(
                                        child: Text('Attendence',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'segoepr',
                                              color: Color(0xff2D527E),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              //height: -1.5
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 160,
                                    height: 155,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff2D527E),
                                            blurRadius: 5.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 2)),
                                    child: Center(
                                      child: Text(' Students',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'segoepr',
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            //height: -1.5
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 160,
                                    height: 155,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff2D527E),
                                            blurRadius: 5.0,
                                          )
                                        ],
                                        border: Border.all(
                                            color: Color(0xff2D527E),
                                            width: 2)),
                                    child: Center(
                                      child: Text('Schedule \n appointment',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'segoepr',
                                            color: Color(0xff2D527E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            //height: -1.5
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180),
                child: Center(
                  child: Container(
                    width: 340,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xff2D527E), width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search...',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          labelStyle: TextStyle(color: Colors.grey.shade400),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xff2D527E),
                            size: 30,
                          ),
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
                press: () {},
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
