import 'package:flutter/material.dart';

import '../../../constant/color.dart';
import '../../../constant/spacing.dart';
import '../data/pages.dart';
import 'method.dart';

Widget fiturView({
  required PageController? pagecontroller,
  required int pageIndex,
  required void Function(int index)? onTap,
}) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fitur',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: fitureView.asMap().entries.map((entry) {
            int index = entry.key;
            var page = entry.value;

            return GestureDetector(
              onTap: () => onTap?.call(index),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: pageIndex == index
                            ? MyColor().lightBlue
                            : Colors.transparent),
                    child: Text(
                      page['label'],
                      style: pageIndex == index
                          ? TextStyle(
                              fontWeight: FontWeight.bold,
                              color: MyColor().darkBlue,
                            )
                          : TextStyle(fontWeight: FontWeight.w100),
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        ),
        verticalSpace(20),
        SizedBox(
          height: 100,
          child: PageView.builder(
            controller: pagecontroller,
            onPageChanged: (index) {
              pageIndex = index;
            },
            itemCount: fitureView.length,
            itemBuilder: (context, index) {
              return pageIndex == 0 ? semuaFiture() : visitorManagementView();
            },
          ),
        ),
      ],
    ),
  );
}
