import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxInt currentIndex = 0.obs;
  final autoSizeGroup = AutoSizeGroup();

  var isDialOpen = ValueNotifier<bool>(false);
}
