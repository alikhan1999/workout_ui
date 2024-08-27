import 'package:azz_medical_web/constant/style.dart';
import 'package:flutter/material.dart';

showProgressDialog(message, context) {
  showGeneralDialog(
      context: context,
      barrierLabel: "Barrier",
      barrierDismissible: false,
      barrierColor: Style.blackColor.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (_, anim, __, child) {
        var begin = 0.5;
        var end = 1.0;
        var curve = Curves.bounceOut;
        if (anim.status == AnimationStatus.reverse) {
          curve = Curves.fastLinearToSlowEaseIn;
        }
        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return ScaleTransition(
          scale: anim.drive(tween),
          child: child,
        );
      },
      pageBuilder: (BuildContext alertContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Material(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 4,
                        ),
                        /*const CircularProgressIndicator(
                          color: Color(0xFF0E9948),
                          strokeWidth: 2,
                        ),*/
                        Image.asset(
                          'assets/images/gradient_loading.gif',
                          height: 100,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16),
                          child: Text("$message"),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      });
}



hideProgressDialog(context) {
  Navigator.of(context).pop();
}