import 'package:clone_my_caliana/app/modules/registrasi/controllers/registrasi_controller.dart';
import 'package:flutter/material.dart';

import '../../../widget/text_input/custom_textfield.dart';
import '../../data/form_data.dart';

Widget formInputRegistrasi({
  required List<TextEditingController> controllers,
  required RegistrasiController controller,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: formData.asMap().entries.map((entry) {
        int index = entry.key;
        var e = entry.value;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            CustomTextField(
              prefixIcon: e['icon'],
              hintText: e['hintText'],
              title: e['title'],
              isRequired: e['isRequired'],
              onChanged: () => controller.validateForm(),
              controller: controllers[index],
              validator:
                  e['title'] == 'Email' ? controller.emailValidator : null,
            ),
          ],
        );
      }).toList(),
    ),
  );
}
