import 'package:flutter/material.dart';

AppBar profileAppBar() {
  return AppBar(
    forceMaterialTransparency: true,
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlutterLogo(),
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
      ),
    ),
    centerTitle: true,
  );
}
