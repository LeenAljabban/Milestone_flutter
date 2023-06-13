import 'dart:async';

import 'package:first/Models/PlacementTestModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Models/QuestionDataModel.dart';
import '../../Services/PlacementTestService.dart';

class PlacementTestController extends GetxController {
  Color blue = Color(0xff2D527E);

  String name = '';
  int? testid;

  //question variables

  PlacementTestModel? placementtest;
  List<QuestionDataModel> questionsList = <QuestionDataModel>[];
  bool last = false;
  int? finalquestion;
  int page = 1;

  bool _isPressed = false;

  bool get isPressed => _isPressed;

  RxBool loading = false.obs;
  double numberOfQuestion = 1;
  final List<int> _selectedAnswers = [];

  List<int> get selectedAnswers => _selectedAnswers;

  //page view controller
  late PageController pageController;

///////////////////////////////////////////////////////////////////////////////////////////////////////////
  @override
  void onInit() {
    super.onInit();

    pageController = PageController(initialPage: 0);
    CallGetquestionslist();
  }

  @override
  void onReady() {
    startTimer(7200);

    super.onReady();
  }

  static const CountdownDuration = Duration(hours: 1, minutes: 60, seconds: 60);
  Timer? timer;
  int remainingSeconds = 1;
  final minutes = '00'.obs;
  final seconds = '00'.obs;
  final hours = '02'.obs;

  void startTimer(int second) {
    Duration duration = Duration(seconds: 1);
    remainingSeconds = second;
    timer = Timer.periodic(duration, (Timer timer) {
      if (remainingSeconds == -1) {
        CallSubmitAnswers();
        timer.cancel();
        Get.offAllNamed('/Timeup');
      } else {
        hours.value =
            (remainingSeconds ~/ 3600).toInt().toString().padLeft(2, "0");
        minutes.value =
            ((remainingSeconds / 60) % 60).toInt().toString().padLeft(2, '0');
        seconds.value =
            (remainingSeconds % 60).toInt().toString().padLeft(2, "0");
        remainingSeconds--;
      }
    });
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    pageController.dispose();
    super.onClose();
  }

///////////////////////////////////////////////////////////////////////////////////////////////////////////

  void selectAnswer(int questionIndex, int answerId) {
    _selectedAnswers[questionIndex] = answerId;
    _isPressed = true;
    update();
  }

  bool isAnswerSelected(int questionIndex, int answerId) {
    return selectedAnswers[questionIndex] == answerId;
  }

  void nextQuestion() {
    if (pageController.page == questionsList.length - 1) {
      _isPressed = false;
      loading(false);
      page++;
      numberOfQuestion = pageController.page! + 2;
      CallGetquestionslist();

      // Get.offAndToNamed('/ContinuePlacment');
    } else {
      // _isPressed = false;
      numberOfQuestion = pageController.page! + 2;
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
      update();
    }
    if (numberOfQuestion == finalquestion) {
      last = true;
    }
  }

  void preQuestion() {
    last = false;
    _isPressed = false;
    pageController.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.linear);

    numberOfQuestion = pageController.page!;
    if (numberOfQuestion == 0) numberOfQuestion = 1;
    update();
  }

  CallGetquestionslist() async {
    try {
      var data = await PlacementTestService.getquestionslist(
        'getTest?page=${page}',
      );
      print('/////////////////////////////////////////////////////////////');
      print(data);
      if (data != null) {
        placementtest = data;

        print(data);

        questionsList.addAll(placementtest!.questions.data);
        _selectedAnswers.add(-1);
      } else {
        print('there is a problem');
      }
    } finally {
      update();
      loading(true);
      testid = placementtest!.id;
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.linear);
      if (placementtest!.questions.nextPageUrl == null) {
        last = true;
        finalquestion = questionsList.length;
      }
    }
  }

  Future<void> CallSubmitAnswers() async {
    try {
      var data = await PlacementTestService.SubmitAnswers(
          'submit', testid, selectedAnswers);
      if (data != null) {
        if (data['message'] == "Answer Submited Successfully ")
          Get.offAllNamed('/ContinuePlacment');
      } else {
        print('there is a problem');
      }
    } finally {}
  }
}

///////////////////////////////////////////////////////////
