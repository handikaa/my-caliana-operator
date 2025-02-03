import 'package:flutter/material.dart';

import '../../../constant/spacing.dart';
import '../../../constant/text_style.dart';
import '../../../widget/button/my_oultline_button.dart';

Widget visitorView() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Hari Ini',
              style: MyTextStyle().header1,
            ),
          ],
        ),
        verticalSpace(20),
        Text(
          'Belum Ada Pengunjung Baru',
          style: MyTextStyle().header1,
        ),
        Text('Pengunjung yang menunggu akan ditampilkan disini'),
        verticalSpace(20),
        MyOultlineButton(
          text: 'Refresh',
        )
      ],
    ),
  );
}
