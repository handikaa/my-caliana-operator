import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  var currentTime = ''.obs;
  RxInt pageIndex = 0.obs;
  TextEditingController searchC = TextEditingController();
  final PageController pageController = PageController();

  @override
  void onInit() {
    super.onInit();
    updateTime(); // Panggil untuk pertama kali
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateTime();
    });
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
  }

  void onMenuTap(int index) {
    pageIndex.value = index;

    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void updateTime() {
    DateTime now = DateTime.now();
    String formattedDate =
        DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(now);
    String formattedTime = DateFormat('hh:mm:ss a', 'id_ID').format(now);

    currentTime.value = '$formattedDate\n$formattedTime';
  }
}
