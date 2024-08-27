import 'package:flutter/material.dart';
import 'package:azz_medical_web/constant/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required String text,
    required Function callback,
  })  : _text = text,
        _callback = callback,
        super(key: key);

  final String _text;
  final Function _callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          print('Button Pressed');
          _callback();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Style.primaryColor),
        child: Text(_text, style: const TextStyle(fontSize: 18,color: Style.whiteColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
