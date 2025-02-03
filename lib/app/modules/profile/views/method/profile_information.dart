import 'package:flutter/material.dart';

import '../../../constant/spacing.dart';
import '../../../constant/text_style.dart';

Widget userInformation() {
  return Column(
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 5),
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://www.shareicon.net/data/512x512/2016/07/26/802007_man_512x512.png'),
          ),
        ),
      ),
      verticalSpace(20),
      Text(
        'Operator MyCaliana',
        style: MyTextStyle().title,
      ),
      Text(
        'interviewcaliana@gmail.com',
        style: MyTextStyle().subTitle,
      ),
    ],
  );
}
