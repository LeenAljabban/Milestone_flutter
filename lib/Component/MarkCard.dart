import 'package:flutter/material.dart';

class MarkCard extends StatelessWidget {
  final String section;
  final int mark;
  final int wholemark;

  // final Color iconColor;

  const MarkCard({
    Key? key,
    required this.section,
    required this.mark,
    required this.wholemark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 14, 30, 4),
      child: Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            // color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xff2D527E), width: 2),
            boxShadow: [
              BoxShadow(
                color: Color(0xff2D527E).withOpacity(0.09),
              ),
              BoxShadow(
                color: Colors.white,
                spreadRadius: -12.0,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  section,
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'segoepr',
                    color: Color(0xff2D527E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    //height: -1.5
                  ),
                ),
                Text(
                  '$mark/$wholemark',
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'segoepr',
                    color: Color(0xff2D527E),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    //height: -1.5
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
