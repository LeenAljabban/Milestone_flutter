import 'package:first/Controllers/StudentsControllers/RateController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class Rate extends StatelessWidget {
  RateController controller = Get.put(RateController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 80,
                    color: Color(0xffAFBBCB).withOpacity(0.8),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 70,
                    color: Color(0xff2D527E).withOpacity(0.6),
                  ),
                ),
                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    height: 60,
                    color: Color(0xff2D527E),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30.0, top: 80, right: 30),
                  child: Column(
                    children: [
                      Text(
                        'How many stars would you give your teacher ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D527E),
                          fontFamily: 'segoepr',
                        ),
                      ),
                      RatingBar(
                        minRating: 1,
                        maxRating: 5,
                        itemSize: 50,
                        glow: false,
                        // onratingupdate called when the user drag on the bar
                        updateOnDrag: true,
                        itemPadding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                        ratingWidget: RatingWidget(
                          full: Icon(
                            Icons.star,
                            color: Color(0xffEF5432),
                          ),
                          half: Icon(
                            Icons.star_half,
                          ),
                          empty: Icon(
                            Icons.star_border_outlined,
                            color: Color(0xffEF5432),
                          ),
                        ),
                        onRatingUpdate: (rating) {
                          controller.starnumber(rating.toInt());
                          print(rating);
                        },
                      ),
                      Text(
                        'Write Somthing to your teacher :',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff2D527E),
                          fontFamily: 'segoepr',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: SizedBox(
                          width: 320,
                          child: TextFormField(
                            controller: controller.noteController,
                            maxLines: 5,
                            style: TextStyle(
                                color: Color(0xff2D527E),
                                fontFamily: 'segoepr',
                                fontSize: 17),
                            decoration: InputDecoration(
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
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'note : ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffEF5432),
                              fontFamily: 'segoepr',
                            ),
                          ),
                          Text(
                            'your name will not appear..please\n'
                            ' rate transparently',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontFamily: 'segoepr',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 200,
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
                          onPressed: () {
                            controller.CallRate();
                          },
                          child: Text(
                            'Show mark',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'segoepr',
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
