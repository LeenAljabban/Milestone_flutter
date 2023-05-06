import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String txt;

  const Cards({
    Key? key,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade400,
          // width: 5,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xffEF5432),
            blurRadius: 2,
            offset: Offset(1, 2), // Shadow position
          ),
          BoxShadow(
            color: Colors.grey.shade200,
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -10.0,
            blurRadius: 5.0,
          ),
        ],
      ),
      width: 200,
      height: 80,
      child: Center(
        child: Text(
          txt,
          style: TextStyle(
              fontSize: 25,
              color: Color(0xff2D527E),
              fontFamily: 'Edu NSW ACT Foundation'),
        ),
      ),
    );
  }
}
