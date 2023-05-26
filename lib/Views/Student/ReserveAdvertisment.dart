import 'package:first/Controllers/StudentsControllers/ReserveController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';

class ReserveAdvertisment extends GetView<ReserveController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image(
                  image: AssetImage('Images/classopen.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 220.0,
                  // right: 5, left: 5
                ),
                child: Card(
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
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: -20.0,
                            blurRadius: 15.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              '- course level :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D527E),
                                  // fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              '1A-1B CONVERSATION  ',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              '\n- Course time :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D527E),
                                  // fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              '2:30-4:30',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              '\n- Course Days :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D527E),
                                  // fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              'Sat - Mon - Wed',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
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
                              '5 March- 5 April',
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30.0),
                                child: SizedBox(
                                  height: 50,
                                  width: 250,
                                  child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        Color(0xff2D527E),
                                      ),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.defaultDialog(
                                          title:
                                              'Your Name Is Added To This Class .',
                                          titlePadding:
                                              EdgeInsets.only(top: 50),
                                          //contentPadding: EdgeInsets.only(top: 5),
                                          titleStyle: TextStyle(
                                              color: Color(0xff2D527E),
                                              fontFamily: 'segoepr',
                                              fontWeight: FontWeight.bold),
                                          radius: 20,
                                          //barrierDismissible: false,
                                          content: Column(
                                            children: [
                                              Container(
                                                height: 150,
                                                child: Center(
                                                  child: Text(
                                                    "Please Visit Us To Pay Within A Week Or Your Name Will Be Removed!",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff2D527E),
                                                        fontFamily: 'segoepr',
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              /////////////////////////////////////////////////////////////////////
                                              Positioned(
                                                bottom: 50,
                                                left: 80,
                                                right: 80,
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
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Understand, Back home ',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontFamily: 'segoepr',
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),

                                              ///////////////////////////////////////////////////////////////////
                                            ],
                                          ));
                                    },
                                    child: Text(
                                      'Reserve',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: 'segoepr',
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey.shade500,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: Colors.white,
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
    );
  }
}
