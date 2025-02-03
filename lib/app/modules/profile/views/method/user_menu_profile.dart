import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/text_style.dart';

Widget userMenuProfile(List<dynamic> userProfile) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: Column(
      children: [
        for (int i = 0; i < userProfile.length; i++) ...[
          ListTile(
            leading: Icon(userProfile[i]['icon'], color: Colors.grey),
            title: Text(
              userProfile[i]['title'],
              style: MyTextStyle().header1.copyWith(
                    color: MyColor().darkBlue,
                  ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: MyColor().darkBlue,
            ),
            onTap: () {
              print('${userProfile[i]['title']} ditekan');
            },
          ),
          if (i < userProfile.length - 1)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(thickness: 1, color: Colors.grey.shade300),
            ),
        ],
      ],
    ),
  );
}
