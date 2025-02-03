import 'package:clone_my_caliana/app/modules/constant/text_style.dart';
import 'package:flutter/material.dart';

Widget numberTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        '1',
        style: MyTextStyle().header1.copyWith(
              color: Colors.grey,
            ),
      ),
    ],
  );
}
