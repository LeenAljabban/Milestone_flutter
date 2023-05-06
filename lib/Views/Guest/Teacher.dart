import 'package:first/Component/IconContainer.dart';
import 'package:first/Component/RoundedAppbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Teacher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            RoundedAppBar(val: 0),
            Positioned(
                bottom: -120,
                right: -100,
                child: ClipOval(
                  child: Container(
                    color: Color(0xff2D527E),
                    height: 400.0, // height of the button
                    width: 420.0, // width of the button
                  ),
                )),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Text('Teacher\'s Profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'segoepr',
                            fontSize: 30)),
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff2D527E),
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
                      width: 360,
                      height: 360,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: CircleAvatar(
                                backgroundColor: Color(0xff2D527E),
                                radius: 65,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("Images/mumayaz.png"),
                                  //NetworkImage
                                  radius: 60,
                                ), //CircleAvatar
                              ),
                            ),
                            Text('Mr- Mumayaz Allan',
                                style: TextStyle(
                                    color: Color(0xff2D527E),
                                    //fontFamily: 'segoepr',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            Divider(
                              height: 35,
                              thickness: 2,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Text('Manager & founder of Milstone.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontFamily: 'segoepr',
                                    fontSize: 18)),
                            Text('Studied at University of the People.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontFamily: 'segoepr',
                                    fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff2D527E),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    shadowColor: Colors.white,
                    elevation: 3,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff2D527E),
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
                      width: 360,
                      height: 150,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Years Of Experience :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2D527E),
                                      // fontFamily: 'segoepr',
                                      fontSize: 18),
                                ),
                                Text(
                                  ' 15 years',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontFamily: 'segoepr',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Email :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff2D527E),
                                      // fontFamily: 'segoepr',
                                      fontSize: 18),
                                ),
                                Text(
                                  ' mymayaz_a@hotmail.com',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontFamily: 'segoepr',
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff2D527E),
                        width: 1,
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
                press: () {})
          ],
        ),
      ),
    );
  }
}
