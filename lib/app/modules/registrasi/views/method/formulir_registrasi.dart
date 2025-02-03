import 'package:clone_my_caliana/app/modules/constant/text_style.dart';
import 'package:flutter/material.dart';

Widget formulirRegistrasiTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Formulir Registrasi',
        style: MyTextStyle().h1,
      ),
    ],
  );
}
