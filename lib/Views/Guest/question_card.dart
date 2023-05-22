import 'package:first/Controllers/GuestControllers/PlacementTestController.dart';
import 'package:first/Models/QuestionDataModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'answea_option.dart';

class QuestionCard extends GetView<PlacementTestController> {
  final QuestionDataModel questiondataModel;
  final int questionIndex;

  const QuestionCard({
    Key? key,
    required this.questiondataModel,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 3,
            color: Color(0xff2D527E),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                questiondataModel.text,
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2D527E),
                  fontFamily: 'segoepr',
                  fontSize: 18,
                ),
              ),
              //const SizedBox(height: 15),
              SizedBox(
                height: 10,
              ),
              ...List.generate(
                  questiondataModel.answers.length,
                  (index) => Column(
                        children: [
                          AnswerOption(
                              questionId: questiondataModel.id,
                              text: questiondataModel.answers[index].name,
                              index: index,
                              isSelected: controller.isAnswerSelected(
                                  questionIndex,
                                  questiondataModel.answers[index].id),
                              onPressed: () {
                                controller.selectAnswer(questionIndex,
                                    questiondataModel.answers[index].id);
                              }),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      )),
            ],
          ),
        ));
  }
}
