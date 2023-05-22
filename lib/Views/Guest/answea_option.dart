import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controllers/GuestControllers/PlacementTestController.dart';

class AnswerOption extends StatelessWidget {
  const AnswerOption({
    Key? key,
    required this.text,
    required this.index,
    required this.questionId,
    required this.onPressed,
    required this.isSelected,
  }) : super(key: key);

  final String text;
  final int index;
  final int questionId;
  final Function() onPressed;
  final bool isSelected;

//هنا الويدجت بتاععت الاجابات
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlacementTestController>(
      init: Get.find<PlacementTestController>(),
      builder: (controller) => InkWell(
          onTap: onPressed,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: 50),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    width: 3,
                    color: isSelected ? Color(0xffEF5432) : Color(0xff2D527E),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: RichText(
                        text: TextSpan(
                            text: '${index + 1}. ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2D527E),
                              fontFamily: 'segoepr',
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(
                                text: text,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D527E),
                                  fontFamily: 'segoepr',
                                  fontSize: 18,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
