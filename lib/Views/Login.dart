import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Component/IconContainer.dart';
import '../Controllers/LoginController.dart';

class Login extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          backgroundColor: controller.blue,
          body: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Colors.white,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Center(
                        child: Image(
                          image: AssetImage('Images/img.png'),
                          height: 200,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: -15.0,
                                blurRadius: 15.0,
                              ),
                            ],
                          ),
                          width: Get.width * 0.9,
                          height: 330,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(35),
                                child: TextField(
                                  controller: controller.usernameController,
                                  decoration: InputDecoration(
                                    labelText: 'user name',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 0.5),
                                    labelStyle:
                                        TextStyle(color: Colors.grey.shade400),
                                    suffixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey.shade400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 35),
                                child: TextField(
                                  controller: controller.passwordController,
                                  decoration: InputDecoration(
                                    labelText: 'password',
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 0.5),
                                    labelStyle:
                                        TextStyle(color: Colors.grey.shade400),
                                    suffixIcon: Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.grey.shade400,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 60,
                              ),
                              SizedBox(
                                width: 150,
                                height: 45,
                                child: TextButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                        controller.blue,
                                      ),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)))),
                                  onPressed: () {
                                    controller.CallLogin();
                                  },
                                  child: Obx(
                                    () => controller.send.value
                                        ? Text(
                                            'log In',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        : CircularProgressIndicator(),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.grey.shade400,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        shadowColor: Colors.white,
                        elevation: 3,
                      ),
                    ),
                    Text(
                      'Don\'t have account?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Enter as a guest',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                IconContainer(
                  icon: Icons.arrow_back_ios_new,
                  iconColor: Colors.white,
                  containerColor: Color(0xff2D527E),
                  press: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
