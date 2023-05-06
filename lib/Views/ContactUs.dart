import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      height: 200,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '0936 118 114',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2D527E),
                                      // fontFamily: 'segoepr',
                                      fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15.0, left: 50),
                                  child: Icon(
                                    Icons.phone_in_talk,
                                    color: Color(0xff2D527E),
                                    size: 30,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'themilestone.ltc@gmail.com',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2D527E),
                                      // fontFamily: 'segoepr',
                                      fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0),
                                  child: Icon(
                                    Icons.email,
                                    size: 30,
                                    color: Color(0xff2D527E),
                                  ),
                                )
                              ],
                            )
                          ],
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
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
