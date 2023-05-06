import 'package:flutter/material.dart';

class EditTextField extends StatelessWidget {
  final IconData icon;
  final controller;

  const EditTextField({
    Key? key,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              // offset: Offset(-2, 5),
              blurRadius: 4,
              color: Colors.grey.shade500,
            ),
          ],
        ),
        child: TextFormField(
          style: TextStyle(
            color: Color(0xff2D527E),
            fontFamily: 'segoepr',
          ),
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffAFBBCB).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  icon,
                  size: 20,
                ),
              ),
            ),
            prefixIconColor: Color(0xff2D527E),
            contentPadding: EdgeInsets.all(2),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xff2D527E),
                width: 2,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Color(0xff2D527E),
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
