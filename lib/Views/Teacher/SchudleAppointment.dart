import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../Controllers/TeacherControllers/LeaveRequestController.dart';
import '../../Controllers/TeacherControllers/SchudleAppointmentController.dart';

class SchudleAppointment extends GetView<SchudleAppointmentController> {
  SchudleAppointmentController controller =
      Get.put(SchudleAppointmentController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 160,
                      color: Color(0xffAFBBCB).withOpacity(0.8),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 150,
                      color: Color(0xff2D527E).withOpacity(0.6),
                    ),
                  ),
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 140,
                      color: Color(0xff2D527E),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Center(
                      child: Text(
                        'Schudle Appointment',
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
                    press: () {
                      Get.back();
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose Course',
                      style: TextStyle(
                        color: Color(0xff2D527E),
                        fontSize: 17,
                        fontFamily: 'segoepr',
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Expanded(
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(
                    //         horizontal: 10, vertical: 12),
                    //     child: GridView.builder(
                    //         shrinkWrap: true,
                    //         itemCount: controller.courses.length,
                    //         itemBuilder: (context, index) {
                    //           return Padding(
                    //             padding: const EdgeInsets.symmetric(
                    //                 horizontal: 10.0, vertical: 7),
                    //             child: InkWell(
                    //               child: Container(
                    //                 // width: 300,
                    //                 // height: 60,
                    //                 decoration: BoxDecoration(
                    //                     color: Color(0xff2D527E),
                    //                     borderRadius: BorderRadius.circular(10),
                    //                     boxShadow: [
                    //                       BoxShadow(
                    //                         color: Color(0xff2D527E),
                    //                         blurRadius: 4.0,
                    //                       )
                    //                     ],
                    //                     border: Border.all(
                    //                         color: Color(0xff2D527E),
                    //                         width: 5)),
                    //                 child: Center(
                    //                   child: Text(
                    //                     controller.courses[index].name,
                    //                     style: TextStyle(
                    //                         color: Colors.white,
                    //                         fontFamily: 'segoepr',
                    //                         fontWeight: FontWeight.w600,
                    //                         fontSize: 25),
                    //                   ),
                    //                 ),
                    //               ),
                    //               onTap: () {
                    //                 controller.setSelectedcourse(
                    //                     controller.courses[index].id);
                    //               },
                    //             ),
                    //           );
                    //         },
                    //         scrollDirection: Axis.horizontal,
                    //         gridDelegate:
                    //             SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisSpacing: 0,
                    //           mainAxisSpacing: 0,
                    //           crossAxisCount: 2,
                    //         )),
                    //   ),
                    // ),
                    Text(
                      'Choose the date',
                      style: TextStyle(
                        color: Color(0xff2D527E),
                        fontSize: 17,
                        fontFamily: 'segoepr',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: TextField(
                        textAlign: TextAlign.center,
                        readOnly: true,
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontFamily: 'segoepr',
                            fontSize: 15),
                        decoration: InputDecoration(
                          labelText: 'select date',
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade400,
                          ),
                          contentPadding: EdgeInsets.only(left: 20),
                          suffixIcon: Icon(
                            Icons.calendar_month,
                            color: Colors.grey.shade500,
                          ),
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
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                        ),
                        controller: controller.startdateController,
                        onTap: () {
                          controller.chooseDate(controller.startdateController);
                        },
                      ),
                    ),
                    Text(
                      'select time',
                      style: TextStyle(
                        color: Color(0xff2D527E),
                        fontSize: 17,
                        fontFamily: 'segoepr',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Obx(
                      () => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xff2D527E), width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                value: controller.selected.value,
                                items: controller.types.map((selectedType) {
                                  return DropdownMenuItem(
                                    child: new Text(
                                      selectedType,
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontFamily: 'segoepr',
                                          fontSize: 15),
                                    ),
                                    value: selectedType,
                                  );
                                }).toList(),
                                onChanged: (newValue) {
                                  controller.setSelected(newValue!);
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Zoom Link',
                      style: TextStyle(
                        color: Color(0xff2D527E),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'segoepr',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: SizedBox(
                        width: 320,
                        height: 70,
                        child: TextFormField(
                          controller: controller.commentController,
                          maxLines: 4,
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontFamily: 'segoepr',
                              fontSize: 15),
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
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
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
                    controller.CallSendSchudle();
                    Get.back();
                  },
                  child: Text(
                    'send appointment',
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
    );
  }
}
