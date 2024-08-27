import 'package:flutter/material.dart';
import 'package:azz_medical_web/application/core/extensions/extensions.dart';
import 'package:azz_medical_web/constant/style.dart';
import 'package:azz_medical_web/ui/base/base_state.dart';

import 'loading_overlay.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorderRadius;
  final bool scroll;
  final String overLayTitle;
  final DecorationImage? image;
  final Color? bodyColor;
  final ScrollController? controller;
  final BaseLoadingState? loadingState;
  final double? height;
  final double? width;

  const BaseContainer(
      {Key? key,
      this.showBorderRadius = true,
      required this.child,
      this.height,
      this.loadingState = BaseLoadingState.none,
      this.width,
      this.padding = EdgeInsets.zero,
      this.margin = EdgeInsets.zero,
      this.scroll = true,
      this.image,
      this.bodyColor,
      this.controller, this.overLayTitle= ''} )
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingOverLay(
      title: overLayTitle,
      loadingState: loadingState ?? BaseLoadingState.none,
      child: Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: showBorderRadius ? const BorderRadius.only(topLeft: Radius.circular(80)) : null,
            image: image,
            color: bodyColor ?? Style.scaffoldBackground),
        child: RemovePrimaryFocusChild(
            child: scroll
                ? SingleChildScrollView(
                    controller: controller,
                    physics: const BouncingScrollPhysics(),
                    child: child,
                  )
                : child),
      ),
    );
  }
}

class RemovePrimaryFocusChild extends StatelessWidget {
  final Widget child;
  const RemovePrimaryFocusChild({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return child.onTap(() {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
        FocusManager.instance.primaryFocus?.unfocus();
      }
    });
  }
}
