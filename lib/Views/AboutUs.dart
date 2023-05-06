import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';
import '../Component/RoundedAppbar.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              RoundedAppBar(
                val: 0,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'About Us',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'segoepr'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image(
                        height: 200,
                        image: AssetImage('Images/AboutUs.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    child: Text(
                      'The Milestone started as an idea by Mumayaz Allan in 2015. It moved through many stages since then.\n'
                      '2016 was the first step, which started by renting some rooms and organizing classes for limited number of students.\n'
                      'Then, in 01/03/2018  The OFFICIAL place opened in Damascus, and during the hard times of Syrian crisis, Milestone LTC has become the leading supplier of languages and training in its field.\n'
                      'The recent move was in 01/02/2022 when the opening of "The Milestone LTC" took place by the founder Mumayaz Allan in Mazraa – Damascus.\n'
                      'The Milestone was the result of more than 17 years of teaching experience, over which we could build a real and practical understanding for the Syrian market needs. \n'
                      'Our mission is to provide and build well-trained and knowledgeable people capable of communicating in the English language effectively.\n'
                      'Our team is well trained and observed to insure high quality of learning experience for our trainees.\n',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        // wordSpacing: 2.5,
                        fontFamily: 'segoepr',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              IconContainer(
                icon: Icons.arrow_back_ios_new,
                iconColor: Color(0xff2D527E),
                containerColor: Colors.white,
                press: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
