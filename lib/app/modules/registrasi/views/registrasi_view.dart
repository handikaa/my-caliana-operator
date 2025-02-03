import 'package:clone_my_caliana/app/modules/widget/button/my_oultline_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/constant.dart';
import '../../widget/button/my_elevated_button.dart';
import '../controllers/registrasi_controller.dart';
import 'method/method.dart';

class RegistrasiView extends GetView<RegistrasiController> {
  const RegistrasiView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WillPopScope(
      onWillPop: () async {
        controller.showBottomSheet();
        return false;
      },
      child: ListView(
        children: [
          formulirRegistrasiTitle(),
          verticalSpace(20),
          numberTitle(),
          verticalSpace(20),
          dataPribadiTitle(),
          verticalSpace(20),
          formInputRegistrasi(
            controllers: controller.controllers,
            controller: controller,
          ),
          verticalSpace(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Obx(() => MyElevatedButton(
                text: 'Selanjutnya',
                backgroundColor: controller.isFormValid.value
                    ? WidgetStatePropertyAll(MyColor().darkBlue)
                    : WidgetStatePropertyAll(Colors.grey),
                textColor: Colors.white,
                onPressed: controller.isFormValid.value
                    ? () {
                        Get.back();
                        Get.showSnackbar(GetSnackBar(
                          message: 'berhasil',
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 2),
                        ));
                      }
                    : null)),
          ),
          verticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyOultlineButton(
              text: 'Batal',
              onPressed: () {
                controller.showBottomSheet();
              },
            ),
          )
        ],
      ),
    ));
  }
}
