import 'package:flutter/material.dart';

import '../Component/Card.dart';
import 'package:get/get.dart';

class WhoAreYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2D527E),
        body: Stack(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: 60.0,
                  ),
                  child: Center(
                    child: Image(
                      image: AssetImage('Images/img.png'),
                      height: 200,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0),
                  child: Text(
                    'WHO ARE YOU ?',
                    style: TextStyle(
                        color: Color(0xff2D527E),
                        fontSize: 25,
                        fontFamily: 'Edu NSW ACT Foundation',
                        wordSpacing: 2.5),
                  ),
                ),
                // SizedBox(
                //   height: 30,
                // ),
                InkWell(
                  child: const Cards(
                    txt: 'Student',
                  ),
                  onTap: () {
                    Get.toNamed("/Login");
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: const Cards(
                    txt: 'Employee',
                  ),
                  onTap: () {
                    Get.toNamed("/Login");
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: const Cards(
                    txt: 'Geust',
                  ),
                  onTap: () {
                    Get.toNamed("/GuestHome");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
