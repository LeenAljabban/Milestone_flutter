import 'package:first/Component/MarkCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../Component/IconContainer.dart';

class MarkDetailes extends StatelessWidget {
  const MarkDetailes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
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
                          "A1 Marks",
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                            fontFamily: 'segoepr',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                IconContainer(
                  icon: Icons.arrow_back_ios_new,
                  containerColor: Colors.white,
                  iconColor: Color(0xff2D527E),
                  press: () {},
                ),
              ],
            ),
            MarkCard(
              section: 'Mid',
              mark: 49,
              wholemark: 50,
            ),
            MarkCard(
              section: 'Presentation',
              mark: 47,
              wholemark: 50,
            ),
            MarkCard(
              section: 'Oral',
              mark: 45,
              wholemark: 50,
            ),
            MarkCard(
              section: 'Final',
              mark: 50,
              wholemark: 50,
            ),
            MarkCard(
              section: 'Homeworks',
              mark: 30,
              wholemark: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 14, 30, 4),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff2D527E),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey.shade500, width: 1.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Result',
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'segoepr',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            //height: -1.5
                          ),
                        ),
                        Text(
                          '90/100',
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'segoepr',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            //height: -1.5
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
