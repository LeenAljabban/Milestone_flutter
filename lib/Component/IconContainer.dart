import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color containerColor;
  final press;

  const IconContainer({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.containerColor,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: press,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.grey.shade500, blurRadius: 10),
            ],
            borderRadius: BorderRadius.circular(15),
            color: containerColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
