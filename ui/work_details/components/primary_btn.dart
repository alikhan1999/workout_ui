import 'package:azz_medical_web/constant/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PrimaryBtn extends StatelessWidget {
  const PrimaryBtn(
      {super.key,
      required this.onPress,
      required this.text,
      this.bgColor,
      this.textColor});

  final Function onPress;
  final String text;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: text,
      child: ElevatedButton(
        onPressed: () => onPress(),
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? Style.primaryColor,
          fixedSize: Size(context.mediaQuery.size.width, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor ?? Style.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

