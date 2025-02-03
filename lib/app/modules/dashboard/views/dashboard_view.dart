import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:clone_my_caliana/app/modules/constant/constant.dart';
import 'package:clone_my_caliana/app/modules/home/views/home_view.dart';
import 'package:clone_my_caliana/app/modules/profile/views/profile_view.dart';
import 'package:clone_my_caliana/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final iconList = <IconData>[
      Icons.home_filled,
      Icons.person_outline,
    ];
    return Scaffold(
        body: Obx(() => IndexedStack(
              index: controller.currentIndex.value,
              children: [
                HomeView(),
                ProfileView(),
              ],
            )),
        floatingActionButton: SpeedDial(
          backgroundColor: Colors.white,
          icon: Icons.add,
          closeDialOnPop: true,
          openCloseDial: controller.isDialOpen,
          children: [
            SpeedDialChild(
                shape: CircleBorder(),
                backgroundColor: MyColor().lightBlue,
                onTap: () => Get.toNamed(Routes.REGISTRASI),
                child: Icon(
                  Icons.add_comment_rounded,
                  color: MyColor().darkBlue,
                ),
                label: 'Pra Registrasi'),
            SpeedDialChild(
                shape: CircleBorder(),
                backgroundColor: MyColor().lightBlue,
                onTap: () => Get.toNamed(Routes.REGISTRASI),
                child: Icon(
                  Icons.person_add_alt_1,
                  color: MyColor().darkBlue,
                ),
                label: 'Registrasi'),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Obx(
          () => Container(
            color: Colors.white,
            height: 70,
            child: AnimatedBottomNavigationBar.builder(
              itemCount: iconList.length,
              tabBuilder: (int index, bool isActive) {
                final color = isActive ? Color(0xff0090E8) : Colors.grey;
                final colorLine =
                    isActive ? Color(0xff0090E8) : Colors.transparent;
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      color: colorLine,
                      height: 3,
                    ),
                    Spacer(),
                    Icon(
                      iconList[index],
                      size: 24,
                      color: color,
                    ),
                    verticalSpace(4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: AutoSizeText(
                        index == 0 ? 'Beranda' : 'Profil',
                        maxLines: 1,
                        style: TextStyle(color: color),
                        group: controller.autoSizeGroup,
                      ),
                    ),
                    verticalSpace(7),
                  ],
                );
              },
              backgroundColor: Colors.white,
              activeIndex: controller.currentIndex.value,
              splashSpeedInMilliseconds: 300,
              notchSmoothness: NotchSmoothness.defaultEdge,
              gapLocation: GapLocation.center,
              onTap: (index) {
                controller.currentIndex.value = index;
              },
            ),
          ),
        ));
  }
}
