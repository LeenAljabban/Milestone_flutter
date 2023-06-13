import 'package:first/Binding/AdvertismentListBinding.dart';
import 'package:first/Binding/AttendentBinding.dart';
import 'package:first/Binding/EditStudentProfileBinding.dart';
import 'package:first/Binding/EditTeacherProfileBinding.dart';
import 'package:first/Binding/GetInfoBinding.dart';
import 'package:first/Binding/GuestInformationBinding.dart';
import 'package:first/Binding/LoginBinding.dart';
import 'package:first/Binding/MarksDetailBinding.dart';
import 'package:first/Binding/QrScannerBinding.dart';
import 'package:first/Binding/UploadHomeworkBinding.dart';
import 'package:first/Views/AboutUs.dart';
import 'package:first/Views/ContactUs.dart';
import 'package:first/Views/GuestSideBar.dart';
import 'package:first/Views/GusetInformation.dart';
import 'package:first/Views/Login.dart';
import 'package:first/Views/OurServices.dart';
import 'package:first/Views/PlacementTestRules.dart';
import 'package:first/Views/Student/BottomNavigation.dart';
import 'package:first/Views/Student/Rate.dart';
import 'package:first/Views/Guest/VerificationCode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Binding/BottomNavigationBinding.dart';
import 'Binding/BottomNavigationTeacherBinding.dart';
import 'Binding/GuestHomeBinding.dart';
import 'Binding/JobAdvertismentBinding.dart';
import 'Binding/LeaveRequestBinding.dart';
import 'Binding/PlacmentTestBinding.dart';
import 'Binding/ReserveBinding.dart';
import 'Binding/VerificationCodeBinding.dart';
import 'Views/Guest/AdvertismentImage.dart';
import 'Views/Guest/TeachersList.dart';
import 'Views/Guest/ContinuePlacment.dart';
import 'Views/Guest/JobAdvertisment.dart';
import 'Views/Guest/PlacementTest.dart';
import 'Views/Guest/Teacher.dart';
import 'Views/Guest/Timeup.dart';
import 'Views/GuestHome.dart';
import 'Views/Student/EditStudentProfile.dart';
import 'Views/Student/Homeworks.dart';
import 'Views/Student/MarkDetailes.dart';
import 'Views/Student/Marks.dart';
import 'Views/Student/Notifications.dart';
import 'Views/Student/OurTeachers.dart';
import 'Views/Student/QrScanner.dart';
import 'Views/Student/ReserveAdvertisment.dart';
import 'Views/Student/StudentHome.dart';
import 'Views/Student/StudentProfile.dart';
import 'Views/Teacher/Attendent.dart';
import 'Views/Teacher/BottomNavigationTeacher.dart';
import 'Views/Teacher/EditTeacherProfile.dart';
import 'Views/Teacher/LeaveRequest.dart';
import 'Views/Teacher/MyRequests.dart';
import 'Views/Teacher/SpicificCourse.dart';
import 'Views/Teacher/TeacherProfile.dart';
import 'Views/Teacher/UploadHomework.dart';
import 'Views/WhoAreYou.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        //use MaterialApp() widget like this
        initialRoute: "/WhoAreYou",
        getPages: [
          GetPage(
            name: "/WhoAreYou",
            page: () => WhoAreYou(),
          ),
          GetPage(
              name: "/AboutUs",
              page: () => AboutUs(),
              binding: GetInfoBinding()),
          GetPage(
            name: "/GuestSideBar",
            page: () => GuestSideBar(),
          ),
          GetPage(
              name: "/OurServices",
              page: () => OurServices(),
              binding: GetInfoBinding()),
          GetPage(
              name: "/ContactUs",
              page: () => ContactUs(),
              binding: GetInfoBinding()),
          GetPage(
            name: "/StudentHome",
            page: () => StudentHome(),
          ),
          GetPage(
            name: "/OurTeachers",
            page: () => OurTeachers(),
          ),
          GetPage(
            name: "/Marks",
            page: () => Marks(),
          ),
          GetPage(
            name: "/MarkDetailes",
            page: () => MarkDetailes(),
            binding: MarksDetailBinding(),
          ),
          GetPage(
            name: "/Rate",
            page: () => Rate(),
          ),
          GetPage(
            name: "/SpecificCourse",
            page: () => SpecificCourse(),
          ),
          GetPage(
            name: "/MyRequests",
            page: () => MyRequests(),
          ),
          GetPage(
            name: "/TeachersList",
            page: () => TeachersList(),
            binding: TeachersListBinding(),
          ),
          GetPage(
              name: "/Attendent",
              page: () => Attendent(),
              binding: AttendentBinding()),
          GetPage(
            name: "/UploadHomework",
            page: () => UploadHomework(),
            binding: UploadHomeworkBinding(),
          ),
          GetPage(
            name: "/LeaveRequest",
            page: () => LeaveRequest(),
            binding: LeaveRequestBinding(),
          ),
          GetPage(
            name: "/QrScanner",
            page: () => QrScanner(),
            binding: QrScannerBinding(),
          ),
          GetPage(
            name: "/BottomNavigation",
            page: () => BottomNavigation(),
            binding: BottomNavigationBinding(),
          ),
          GetPage(
            name: "/BottomNavigationTeacher",
            page: () => BottomNavigationTeacher(),
            binding: BottomNavigationTeacherBinding(),
          ),
          GetPage(
            name: "/AdvertismentImage",
            page: () => AdvertismentImage(),
          ),
          GetPage(
            name: "/StudentProfile",
            page: () => StudentProfile(),
          ),
          GetPage(
            name: "/TeacherProfile",
            page: () => TeacherProfile(),
          ),
          GetPage(
            name: "/EditStudentProfile",
            page: () => EditStudentProfile(),
            binding: EditStudentProfileBinding(),
          ),
          GetPage(
            name: "/EditTeacherProfile",
            page: () => EditTeacherProfile(),
            binding: EditTeacherProfileBinding(),
          ),
          GetPage(
            name: "/VerificationCode",
            page: () => VerificationCode(),
            binding: VerificationCodeBinding(),
          ),
          GetPage(
            name: "/ContinuePlacment",
            page: () => ContinuePlacment(),
          ),
          GetPage(
            name: "/Timeup",
            page: () => Timeup(),
          ),
          GetPage(
            name: "/JobAdvertisment",
            page: () => JobAdvertisment(),
            binding: JobAdvertismentBinding(),
          ),
          GetPage(
            name: "/Teacher",
            page: () => Teacher(),
          ),
          GetPage(
            name: "/PlacementTest",
            page: () => PlacementTest(),
            binding: PlacementTestBinding(),
          ),
          GetPage(
            name: "/HomeWorks",
            page: () => HomeWorks(),
          ),
          GetPage(
            name: "/Notifications",
            page: () => Notifications(),
          ),
          GetPage(
            name: "/ReserveAdvertisment",
            page: () => ReserveAdvertisment(),
            binding: ReserveBinding(),
          ),
          GetPage(
            name: "/PlacementTestRules",
            page: () => PlacementTestRules(),
          ),
          GetPage(
            name: "/Login",
            page: () => Login(),
            binding: LoginBinding(),
          ),
          GetPage(
            name: "/GuestInformation",
            page: () => GuestInformation(),
            binding: GuestInformationBinding(),
          ),
          GetPage(
            name: "/GuestHome",
            page: () => GuestHome(),
            binding: GuestHomeBinding(),
          ),
        ]);
  }
}
