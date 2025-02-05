import 'package:clone_my_caliana/app/modules/constant/constant.dart';
import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final WidgetStateProperty<Color?>? backgroundColor;
  final void Function()? onPressed;
  const MyElevatedButton(
      {super.key,
      required this.text,
      this.backgroundColor,
      this.textColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(
          MyColor().darkBlue,
        ),
        backgroundColor: backgroundColor,
        surfaceTintColor: WidgetStatePropertyAll(
          MyColor().darkBlue,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor ?? Colors.black),
      ),
    );
  }
}
