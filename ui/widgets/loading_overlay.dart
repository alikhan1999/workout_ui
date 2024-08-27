import 'package:azz_medical_web/constant/style.dart';
import 'package:azz_medical_web/ui/base/base_mixin.dart';
import 'package:flutter/material.dart';
import 'package:azz_medical_web/application/core/extensions/extensions.dart';
import 'package:azz_medical_web/ui/base/base_state.dart';

class LoadingOverLay extends StatelessWidget with BaseMixin {
  LoadingOverLay(
      {Key? key,
      required this.loadingState,
      required this.child,
      this.title = ''})
      : super(key: key);
  final BaseLoadingState loadingState;
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        if (loadingState == BaseLoadingState.loading)
          AbsorbPointer(
            absorbing: true,
            child: Container(
              color: Colors.black12,
              height: context.height,
              width: context.width,
            ),
          ),
        if (loadingState == BaseLoadingState.loading)
          Container(
            padding: const EdgeInsets.all(20),

            decoration: const BoxDecoration(
                color: Style.whiteColor,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // const FlickrLoader(
                //   overLay: false,
                // ),
                Image.asset(
                  'assets/images/gradient_loading.gif',
                  height: 80,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                 title,
                  style: context.textTheme.titleMedium?.copyWith(
                    fontFamily: 'Raleway',
                    color: Style.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}


