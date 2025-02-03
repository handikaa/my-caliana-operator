import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/text_style.dart';

Widget callCenterAppMenu(List<dynamic> appMenu) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(
      children: [
        for (int i = 0; i < appMenu.length; i++) ...[
          ListTile(
            leading: Icon(appMenu[i]['icon'], color: Colors.grey),
            title: Text(
              appMenu[i]['title'],
              style: MyTextStyle().header1.copyWith(
                    color: MyColor().darkBlue,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: MyColor().darkBlue,
            ),
            onTap: () {},
          ),
          if (i < appMenu.length - 1)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(thickness: 1, color: Colors.grey.shade300),
            ),
        ],
      ],
    ),
  );
}
