import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

class Notifications extends StatelessWidget {
  bool check = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          check
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 96),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 14, 20, 2),
                                child: Container(
                                    width: double.infinity,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade400,
                                          blurRadius: 5.0,
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              'the Milestone will be off on 2 may ',
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontFamily: 'segoepr',
                                                color: Color(0xff2D527E),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                //height: -1.5
                                              )),
                                          Text('26-1-2023',
                                              //textAlign: TextAlign.center,
                                              style: TextStyle(
                                                //fontFamily: 'segoepr',
                                                color: Colors.grey.shade500,
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                //height: -1.5
                                              ))
                                        ],
                                      ),
                                    )),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Text(
                    'There is no notifications..',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xff2D527E),
                      fontFamily: 'segoepr',
                    ),
                  ),
                ),
          ClipPath(
            clipper: WaveClipperTwo(
              flip: true,
            ),
            child: Container(
              height: 113,
              color: Color(0xffAFBBCB),
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
                  "Notifications",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'segoepr',
                  ),
                ),
              )),
            ),
          ),
        ],
      )),
    );
  }
}
