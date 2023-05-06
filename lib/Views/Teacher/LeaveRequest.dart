import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';
import '../../Controllers/TeacherControllers/LeaveRequestController.dart';

class LeaveRequest extends GetView<LeaveRequestController> {
  const LeaveRequest({Key? key}) : super(key: key);

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
                          'Leave Request',
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Leave start date',
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
                          controller: controller.dateController,
                          onTap: () {
                            controller.chooseDate();
                          },
                        ),
                      ),
                      Text(
                        'Total leave days',
                        style: TextStyle(
                          color: Color(0xff2D527E),
                          fontSize: 17,
                          fontFamily: 'segoepr',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: Color(0xff2D527E), width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  color: Color(0xff2D527E),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 18.0),
                                iconSize: 32.0,
                                onPressed: controller.DecraeseDays,
                              ),
                              Obx(
                                () => Text(
                                  '${controller.NumDays.value}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    fontFamily: 'segoepr',
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  color: Color(0xff2D527E),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 18.0),
                                iconSize: 32.0,
                                onPressed: controller.IncreaseDays,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        'Leave Type',
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
                              border: Border.all(
                                  color: Color(0xff2D527E), width: 2),
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
                        'Comment',
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
                          child: TextFormField(
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
                    onPressed: () {},
                    child: Text(
                      'Submit Request',
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
