import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
      backgroundColor: Colors.grey.shade100,
      title: Row(
        spacing: 20,
        children: [
          FlutterLogo(),
          Spacer(),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerLeft,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 7, top: 3, bottom: 3, right: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const AutoSizeText(
                  'Operator',
                  maxFontSize: 15,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Positioned(
                right: 0,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://www.shareicon.net/data/512x512/2016/07/26/802007_man_512x512.png'),
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              size: 33,
              Icons.notifications_none_outlined,
              color: Colors.grey,
            ),
          )
        ],
      ));
}
