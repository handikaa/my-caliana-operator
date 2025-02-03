import 'package:flutter/material.dart';

import '../../../constant/text_style.dart';

Widget dataPribadiTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Data Pribadi',
        style: MyTextStyle().header1,
      ),
    ],
  );
}
