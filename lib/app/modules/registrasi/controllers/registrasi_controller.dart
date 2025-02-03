import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/spacing.dart';
import '../../constant/text_style.dart';
import '../data/form_data.dart';

class RegistrasiController extends GetxController {
  List<TextEditingController> controllers = List.generate(
    formData.length,
    (index) => TextEditingController(),
  );
  RxBool isFormValid = false.obs;

  @override
  void onInit() {
    super.onInit();

    for (var controller in controllers) {
      ever(controller.text.obs, (_) {
        validateForm();
      });
    }
  }

  @override
  void onClose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    super.onClose();
  }

  void validateForm() {
    bool valid = true;
    for (int i = 0; i < formData.length; i++) {
      if (formData[i]['isRequired'] == true && controllers[i].text.isEmpty) {
        valid = false;
        break;
      }
    }
    isFormValid.value = valid;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }

    final regex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@(gmail\.com|yahoo\.com|[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$');
    if (!regex.hasMatch(value)) {
      return 'Format email tidak valid';
    }
    return null;
  }

  void showBottomSheet() {
    Get.bottomSheet(BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Container(
          color: Colors.white,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(40),
              Text(
                'Semua data tidak akan disimpan.\nYakin ingin membatalkan?',
                textAlign: TextAlign.center,
                style: MyTextStyle().header1,
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.back();
                        Get.back();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        color: Colors.white,
                        child: Text(
                          'Ya, Batalkan',
                          style: MyTextStyle().header1,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        color: Colors.red,
                        child: Text(
                          'Tidak, Kembali',
                          style: MyTextStyle()
                              .header1
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    ));
  }
}
