import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constant.dart';
import '../controllers/home_controller.dart';
import 'method/method.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: appBar(),
      body: GetBuilder(
          init: HomeController(),
          builder: (context) {
            return ListView(
              children: [
                verticalSpace(20),
                Obx(
                  () => dateTimeView(
                    currentTime: controller.currentTime.value,
                  ),
                ),
                verticalSpace(20),
                searchView(searcController: controller.searchC),
                verticalSpace(20),
                verticalSpace(10),
                Obx(
                  () => fiturView(
                    pagecontroller: controller.pageController,
                    onTap: (index) => controller.onMenuTap(index),
                    pageIndex: controller.pageIndex.value,
                  ),
                ),
                verticalSpace(20),
                visitorView()
              ],
            );
          }),
    );
  }
}
