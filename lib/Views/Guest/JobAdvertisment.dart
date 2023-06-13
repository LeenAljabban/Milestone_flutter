import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Component/IconContainer.dart';
import '../../Controllers/GuestControllers/JobAdvertismentController.dart';

class JobAdvertisment extends GetView<JobAdvertismentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image(
                  image: NetworkImage(
                      'http://192.168.1.54:8000/${controller.adv.image}'),
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 220.0,
                  // right: 5, left: 5
                ),
                child: Card(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: 600),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blue.shade900,
                            blurRadius: 5,
                            offset: Offset(0.5, 1), // Shadow position
                          ),
                          BoxShadow(
                            color: Colors.indigo.shade50,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: -20.0,
                            blurRadius: 15.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              '- Job Title :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D527E),
                                  // fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              controller.adv.title,
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              '\n- Job Description :',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff2D527E),
                                  // fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            Text(
                              controller.adv.description,
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontFamily: 'segoepr',
                                  fontSize: 20),
                            ),
                            controller.token != ''
                                ? Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 50.0),
                                      child: SizedBox(
                                        height: 50,
                                        width: 250,
                                        child: TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              Color(0xff2D527E),
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(22),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            controller.pickfile();
                                            controller.CallUploadCv(
                                                controller.adv.id);
                                          },
                                          child: Text(
                                            'upload cv',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontFamily: 'segoepr',
                                                fontSize: 20),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.grey.shade500,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  shadowColor: Colors.white,
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
        ),
      ),
    );
  }
}
