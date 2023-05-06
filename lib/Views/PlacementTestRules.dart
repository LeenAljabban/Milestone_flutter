import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';

class PlacementTestRules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image(
                image: AssetImage('Images/placementTest.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 220.0,
                // right: 5, left: 5
              ),
              child: Card(
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
                        color: Colors.indigo.shade50,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: -20.0,
                        blurRadius: 15.0,
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        ' Examination Instructions:',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2D527E),
                            // fontFamily: 'segoepr',
                            fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Text(
                          '- you have 120 minutes .\n'
                          '- after doing this test '
                          'we will contact you to continue the oral part of it in our institute.\n'
                          '- you can change your answers until pressing done button .  ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontFamily: 'segoepr',
                              fontSize: 20),
                        ),
                      ),
                    ],
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
            Positioned(
              bottom: 50,
              left: 50,
              right: 50,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff2D527E),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Do The Test',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'segoepr',
                      fontSize: 18),
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
    );
  }
}
