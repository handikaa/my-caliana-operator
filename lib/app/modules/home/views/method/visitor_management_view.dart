import 'package:flutter/material.dart';

Widget visitorManagementView() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    textBaseline: TextBaseline.ideographic,
    children: [
      Column(
        children: [
          Icon(Icons.contact_page_outlined),
          SizedBox(
            height: 10,
          ),
          Text(
            'Daftar\nPengunjung',
            textAlign: TextAlign.center,
          )
        ],
      ),
      Column(
        children: [
          Icon(Icons.home_outlined),
          SizedBox(
            height: 10,
          ),
          Text('Residen')
        ],
      ),
      Column(
        children: [
          Icon(Icons.move_up_sharp),
          SizedBox(
            height: 10,
          ),
          Text('Dasbor')
        ],
      ),
    ],
  );
}
