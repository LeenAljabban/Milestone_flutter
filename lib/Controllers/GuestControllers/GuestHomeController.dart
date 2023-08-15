import 'package:first/Models/AdvertismentModel.dart';
import 'package:first/Models/UserModel.dart';
import 'package:first/Services/GuestHomeService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Models/PhotoModel.dart';

class GuestHomeController extends GetxController {
  Color blue = Color(0xff2D527E);
  RxInt activeIndex = 0.obs;

  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  var images = <PhotoModel>[].obs;
  var advertisments = <AdvertismentModel>[].obs;
  List<UserModel> teachers = [];
  var isLoading = false.obs;
  var isLoading2 = false.obs;
  var isLoading3 = false.obs;

  @override
  void onInit() {
    CallGuestHomePhotos();
    CallGuestHomeAdvertisment();
    CallGuestHomeTeachers();
    super.onInit();
  }

  CallGuestHomePhotos() async {
    try {
      var data = await GuestHomeService.GuestHomePhotos(
        'images',
      );
      if (data != null) {
        images.assignAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading(true);
    }
  }

  CallGuestHomeAdvertisment() async {
    try {
      var data = await GuestHomeService.GuestHomeAdvertisment(
        'advertisements',
      );
      if (data != null) {
        advertisments.assignAll(data);
        print(advertisments.length);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading2(true);
    }
  }

  CallGuestHomeTeachers() async {
    try {
      var data = await GuestHomeService.GuestHomeTeachers(
        'teachers',
      );
      if (data != null) {
        teachers.addAll(data);
      } else {
        print('there is a problem');
      }
    } finally {
      isLoading3(true);
    }
  }
}
