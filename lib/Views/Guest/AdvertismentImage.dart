import 'package:first/Component/IconContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdvertismentImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Image(
                fit: BoxFit.fill,
                width: double.infinity,
                image: AssetImage('Images/img_3.png'),
              ),
            ),
            IconContainer(
                icon: Icons.arrow_back_ios_new,
                iconColor: Colors.white,
                containerColor: Color(0xff2D527E),
                press: () {

                })
          ],
        ),
      ),
    );
  }
}
