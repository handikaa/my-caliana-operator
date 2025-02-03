import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constant.dart';
import '../controllers/profile_controller.dart';
import 'data/data.dart';
import 'method/method.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: profileAppBar(),
        body: ListView(
          children: [
            userInformation(),
            verticalSpace(20),
            userMenuProfile(userProfile),
            verticalSpace(20),
            callCenterAppMenu(appMenu),
          ],
        ));
  }
}
