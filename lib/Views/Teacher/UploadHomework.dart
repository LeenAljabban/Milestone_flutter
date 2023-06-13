import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import '../../Component/IconContainer.dart';
import '../../Controllers/TeacherControllers/UploadHomeorkController.dart';

class UploadHomework extends GetView<UploadHomeworkController> {
  const UploadHomework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 130,
                        color: Color(0xffAFBBCB).withOpacity(0.8),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 120,
                        color: Color(0xff2D527E).withOpacity(0.6),
                      ),
                    ),
                    ClipPath(
                      clipper: WaveClipperTwo(),
                      child: Container(
                        height: 110,
                        color: Color(0xff2D527E),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: Text(
                          'Upload Homework',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'segoepr',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    IconContainer(
                      icon: Icons.arrow_back_ios_new,
                      iconColor: Color(0xff2D527E),
                      containerColor: Colors.white,
                      press: () {},
                    ),
                  ],
                ),
                Text(
                  'Write the homework',
                  style: TextStyle(
                    color: Color(0xff2D527E),
                    fontSize: 20,
                    fontFamily: 'segoepr',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: SizedBox(
                    width: 340,
                    child: TextFormField(
                      maxLines: 6,
                      style: TextStyle(
                          color: Colors.grey.shade500,
                          fontFamily: 'segoepr',
                          fontSize: 15),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Or',
                  style: TextStyle(
                    color: Color(0xff2D527E),
                    fontSize: 20,
                    fontFamily: 'segoepr',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: SizedBox(
                    width: 330,
                    height: 60,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              width: 2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        controller.pickfile();
                      },
                      child: Obx(
                        () => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            controller.refreshScreen.value,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              color: Colors.grey.shade400,
                              fontFamily: 'segoepr',

                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
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
                    onPressed: () {},
                    child: Text(
                      'Upload',
                      style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'segoepr',
                          fontSize: 20),
                    ),
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
