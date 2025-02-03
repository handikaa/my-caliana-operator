import 'package:flutter/material.dart';

import '../../constant/spacing.dart';
import '../../constant/text_style.dart';

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;
  final String title;
  final bool isRequired;
  final TextEditingController? controller;
  final VoidCallback? onChanged;
  final String? Function(String?)? validator;

  final double height;

  const CustomTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.controller,
    this.height = 50,
    required this.title,
    required this.isRequired,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: MyTextStyle().subTitle1,
            ),
            isRequired
                ? Text(
                    '*',
                    style: MyTextStyle().subTitle1.copyWith(
                          color: Colors.red,
                        ),
                  )
                : Text(
                    ' (tidak wajib diisi)',
                    style: MyTextStyle().subTitle1.copyWith(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                  ),
          ],
        ),
        verticalSpace(10),
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            keyboardType: title == 'Email'
                ? TextInputType.emailAddress
                : title.toLowerCase().contains('nomor')
                    ? TextInputType.number
                    : TextInputType.text,
            controller: controller,
            cursorColor: Colors.blue,
            validator: validator,
            onChanged: (value) {
              if (onChanged != null) {
                onChanged!();
              }
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
              hintText: hintText,
              prefixIcon: Icon(
                prefixIcon,
                color: Colors.grey,
                size: 15,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
