import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Timeup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              top: -40,
              right: -120,
              child: ClipOval(
                child: Container(
                  color: Color(0xff2D527E),
                  height: 320.0, // height of the button
                  width: 220.0, // width of the button
                ),
              )),
          Center(
            child: Card(
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
                width: 340,
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Time is up ! \n ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffEF5432),
                        fontFamily: 'segoepr',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' wait for us to contact'
                      'you and make oral'
                      'test appointment ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff2D527E),
                        fontFamily: 'segoepr',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0xff2D527E),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              shadowColor: Colors.white,
              elevation: 3,
            ),
          ),
          Positioned(
            right: 100,
            left: 100,
            bottom: 180,
            child: SizedBox(
              height: 70,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff2D527E),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.offNamed('/GuestHome');
                },
                child: Text(
                  'Back Home',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'segoepr',
                      fontSize: 18),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: -150,
              left: -70,
              child: ClipOval(
                child: Container(
                  color: Color(0xff2D527E),
                  height: 220.0, // height of the button
                  width: 320.0, // width of the button
                ),
              )),
        ],
      ),
    ));
  }
}
