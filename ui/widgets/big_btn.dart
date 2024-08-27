import 'package:flutter/material.dart';
import 'package:azz_medical_web/application/core/extensions/extensions.dart';
import 'package:azz_medical_web/constant/style.dart';
import 'package:azz_medical_web/ui/base/base_state.dart';
import 'package:azz_medical_web/ui/base/base_widget.dart';

import 'custom_loader.dart';

class BigBtn extends BaseStateLessWidget {
  final VoidCallback onTap;
  final Widget child;
  final bool showGradient;
  final Color? color;
  final double? radius;
  final double? height;
  final double? width;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final Color borderColor;
  final bool showArrow;
  final BaseLoadingState loadingState;

  BigBtn(
      {required this.onTap,
      Key? key,
      this.showArrow = false,
      this.loadingState = BaseLoadingState.none,
      required this.child,
      this.padding = EdgeInsets.zero,
      this.borderColor = Colors.transparent,
      this.showGradient = false,
      this.radius,
      this.color = Style.scaffoldBackground,
      this.elevation = 4.0,
      this.width,
      this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: loadingState == BaseLoadingState.loading
          ? const FlickrLoader()
          : Material(

            child: ElevatedButton(
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  }
                  onTap();
                },
                style: ElevatedButton.styleFrom(
                  surfaceTintColor:  Colors.yellow,
                    shadowColor:  Colors.red.shade300,
            
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius ?? 10),
                    ),
                    splashFactory: InkRipple.splashFactory,
                    maximumSize: Size(width ?? context.width, height ??40),
                    padding: EdgeInsets.zero,
                    elevation: elevation),
                child: Container(
                  height: height ?? 30,
                  decoration: showGradient
                      ? Style.sectionBoxGradientDecoration(radius: radius ?? 10)
                      : Style.sectionBoxDecoration(color: color!, radius: radius ??10)
                          .copyWith(border: Border.all(color: borderColor)),
                  child: showArrow
                      ? Center(
                          child: Row(
                          children: <Widget>[
                            const Spacer(
                              flex: 2,
                            ),
                            child,
                            const Spacer(
                              flex: 1,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            )
                          ],
                        ))
                      : Center(child: child),
                ),
              ),
          ),
    );
  }
}
