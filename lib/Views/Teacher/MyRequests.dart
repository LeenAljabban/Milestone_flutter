import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import '../../Component/IconContainer.dart';

class MyRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 96),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 14, 20, 0),
                            child: Container(
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff2D527E),
                                    blurRadius: 5.0,
                                  )
                                ],
                                border: Border.all(
                                    color: Color(0xff2D527E), width: 2),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Leave request',
                                        //textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'segoepr',
                                          color: Color(0xff2D527E),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          //height: -1.5
                                        )),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text('26-1-2023',
                                        //textAlign: TextAlign.center,
                                        style: TextStyle(
                                          //fontFamily: 'segoepr',
                                          color: Colors.grey.shade500,
                                          // fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          //height: -1.5
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: WaveClipperTwo(
                flip: true,
              ),
              child: Container(
                height: 113,
                color: Colors.grey.shade400,
              ),
            ),
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 113,
                color: Color(0xff2D527E),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Text(
                    "My Requests",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'segoepr',
                    ),
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: IconContainer(
                icon: Icons.arrow_back_ios_new,
                iconColor: Color(0xff2D527E),
                containerColor: Colors.white,
                press: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
