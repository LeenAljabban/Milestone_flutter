import 'package:first/Controllers/TeacherControllers/AttendentController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/IconContainer.dart';

class Attendent extends GetView<AttendentController> {
  const Attendent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  color: Color(0xff2D527E),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Text(
                              "Choose session",
                              style: TextStyle(
                                fontSize: 27,
                                color: Colors.white,
                                fontFamily: 'segoepr',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10),
                              child: GridView.builder(
                                scrollDirection: Axis.horizontal,
                                //shrinkWrap: true,
                                itemCount: 30,
                                itemBuilder: (BuildContext ctx, index) {
                                  return Obx(
                                    () => InkWell(
                                      child: Card(
                                        child: Container(
                                          // height: 100,
                                          // width: 100,
                                          child: Center(
                                            child: Text(
                                              '${index + 1}',
                                              style: TextStyle(
                                                fontSize: 22,
                                                color: controller
                                                            .SelectedSession ==
                                                        index + 1
                                                    ? Colors.red
                                                    : Color(0xff2D527E)
                                                        .withOpacity(0.7),
                                                fontFamily: 'segoepr',
                                              ),
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff2D527E)
                                                    .withOpacity(0.09),
                                              ),
                                              BoxShadow(
                                                color: Colors.white,
                                                spreadRadius: -15.0,
                                                blurRadius: 15.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: Color(0xff2D527E)
                                                  .withOpacity(0.9),
                                              width: 3),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                      ),
                                      onTap: () {
                                        controller.SelectedSession.value =
                                            index + 1;
                                      },
                                    ),
                                  );
                                },
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 0,
                                  mainAxisSpacing: 0,
                                  crossAxisCount: 2,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                SizedBox(
                  width: double.infinity,
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: Text(
                          '#',
                          style: TextStyle(
                            color: Color(0xff2D527E),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Name',
                          style: TextStyle(
                            color: Color(0xff2D527E),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Attendent',
                          style: TextStyle(
                            color: Color(0xff2D527E),
                          ),
                        ),
                      ),
                    ],
                    rows: controller.myList
                        .map(
                          (e) => DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  e['id'].toString(),
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              DataCell(
                                Text(
                                  e['name'],
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ),
                              DataCell(
                                Text(
                                  e['Attendent'],
                                  style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      color: (e['Attendent'] == 'absent')
                                          ? Colors.red
                                          : Colors.green),
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
