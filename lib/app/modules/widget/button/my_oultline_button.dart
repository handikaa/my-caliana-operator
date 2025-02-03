import 'package:clone_my_caliana/app/modules/constant/constant.dart';
import 'package:flutter/material.dart';

class MyOultlineButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const MyOultlineButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(
            MyColor().darkBlue,
          ),
          surfaceTintColor: WidgetStatePropertyAll(
            MyColor().darkBlue,
          ),
          side: WidgetStatePropertyAll(
            BorderSide(color: MyColor().darkBlue),
          ),
        ),
        onPressed: onPressed,
        child: Text(text));
  }
}
