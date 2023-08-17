import 'package:first/Component/RoundedAppbar.dart';

import 'package:first/Views/GuestSideBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../Component/IconContainer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Controllers/GuestControllers/GuestHomeController.dart';
import '../global.dart';

class GuestHome extends GetView<GuestHomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => controller.isLoading.value
            ? Scaffold(
                key: controller.key,
                drawer: GuestSideBar(),
                body: SingleChildScrollView(
                  child: Stack(
                    children: [
                      RoundedAppBar(
                        val: 0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 50.0, bottom: 20),
                            child: Center(
                              child: Text(
                                'WELOCOME TO MILESTONE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'segoepr',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          CarouselSlider.builder(
                            itemCount: controller.images.length,
                            itemBuilder: (BuildContext context, int itemIndex,
                                    int pageViewIndex) =>
                                Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                // height: 300,
                                // width: 300,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(imageurl +
                                        controller.images[itemIndex].filePath),
                                  ),
                                ),
                              ),
                            ),
                            options: CarouselOptions(
                                //height: 210,
                                //  aspectRatio: 18 / 9,
                                autoPlay: true,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                                enlargeFactor: 0.5,
                                enableInfiniteScroll: true,
                                onPageChanged: (index, r) {
                                  controller.activeIndex.value = index;
                                }),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Obx(
                            () => buildIndicatot(),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 22.0, bottom: 15),
                            child: Text(
                              'Advertisment ',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'segoepr',
                                color: controller.blue,
                              ),
                            ),
                          ),
                          CarouselSlider.builder(
                            itemCount: controller.advertisments.length,
                            itemBuilder: (BuildContext context, int itemIndex,
                                    int pageViewIndex) =>
                                Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: InkWell(
                                child: Obx(
                                  () => controller.isLoading2.value
                                      ? Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            border: Border.all(
                                                color: controller.blue,
                                                width: 8),
                                          ),
                                          width: 230,
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            child: Image(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(imageurl +
                                                  controller
                                                      .advertisments[itemIndex]
                                                      .image),
                                            ),
                                          ),
                                        )
                                      : const Center(
                                          child: CircularProgressIndicator()),
                                ),
                                onTap: () {
                                  if (controller.advertisments[itemIndex]
                                          .advertismentTypeId ==
                                      2) {
                                    Get.toNamed('/JobAdvertisment',
                                        arguments: controller
                                            .advertisments[itemIndex]);
                                  } else if (controller.advertisments[itemIndex]
                                          .advertismentTypeId ==
                                      1) {
                                    //todo without reserve button
                                    Get.toNamed('/ReserveAdvertisment',
                                        arguments: controller
                                            .advertisments[itemIndex].id);
                                  } else if (controller.advertisments[itemIndex]
                                          .advertismentTypeId ==
                                      3) {
                                    Get.toNamed('/PlacementTestRules',
                                        arguments: controller
                                            .advertisments[itemIndex]);
                                  }
                                },
                              ),
                            ),
                            options: CarouselOptions(
                              height: 177,
                              viewportFraction: 0.6,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Our Teachers',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'segoepr',
                                    color: controller.blue,
                                  ),
                                ),
                                InkWell(
                                  child: Text(
                                    'see all',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 15,
                                      color: controller.blue,
                                    ),
                                  ),
                                  onTap: () {
                                    Get.toNamed('/OurTeachers');
                                  },
                                ),
                              ],
                            ),
                          ),
                          Obx(
                            () => controller.isLoading3.value
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20.0, vertical: 7),
                                          child: InkWell(
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: controller.blue,
                                                      blurRadius: 5.0,
                                                    )
                                                  ],
                                                  border: Border.all(
                                                      color: controller.blue,
                                                      width: 2)),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Container(
                                                      height: 90,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        image: DecorationImage(
                                                            image: NetworkImage(
                                                              imageurl +
                                                                  controller
                                                                      .teachers[
                                                                          index]
                                                                      .image,
                                                            ),
                                                            fit: BoxFit.fill),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      8.0),
                                                          child: Text(
                                                            controller
                                                                    .teachers[
                                                                        index]
                                                                    .firstName +
                                                                ' ' +
                                                                controller
                                                                    .teachers[
                                                                        index]
                                                                    .lastName,
                                                            style: TextStyle(
                                                              color: controller
                                                                  .blue,
                                                              fontSize: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          controller
                                                              .teachers[index]
                                                              .email,
                                                          style: TextStyle(
                                                              fontSize: 14.0,
                                                              color: Colors.grey
                                                                  .shade600),
                                                        ),
                                                        Row(
                                                          children:
                                                              List.generate(
                                                            controller
                                                                .teachers[index]
                                                                .rate
                                                                .round(),
                                                            (index) => Icon(
                                                                Icons.star,
                                                                color: Colors
                                                                    .yellow),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            onTap: () {
                                              Get.toNamed('/Teacher',
                                                  arguments: controller
                                                      .teachers[index]);
                                            },
                                          ));
                                    })
                                : Center(child: CircularProgressIndicator()),
                          ),
                        ],
                      ),
                      IconContainer(
                        icon: Icons.menu,
                        iconColor: controller.blue,
                        containerColor: Colors.white,
                        press: () {
                          controller.key.currentState?.openDrawer();
                        },
                      ),
                    ],
                  ),
                ),
              )
            : const Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
    );
  }

  buildIndicatot() {
    return Center(
      child: AnimatedSmoothIndicator(
        activeIndex: controller.activeIndex.value,
        count: controller.images.length,
        effect: JumpingDotEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: controller.blue,
        ),
      ),
    );
  }
}
