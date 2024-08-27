import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class BottomButton extends StatelessWidget  with BaseMixin{
  BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        dimens.k30.horizontalBoxPadding(),
        const Icon(Icons.timer),
        dimens.k20.horizontalBoxPadding(),
        Text(
          "03 min 30sec",
          textAlign: TextAlign.center,
          style: context.textTheme.headlineSmall
              ?.copyWith(color: Style.black, fontSize: dimens.k8),
        ),
        dimens.k10.horizontalBoxPadding(),
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.yellow,
              shadowColor: Colors.red.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              splashFactory: InkRipple.splashFactory,
              maximumSize:
              Size(MediaQuery.of(context).size.width * 0.3, 40),
              padding: EdgeInsets.zero,
              elevation: 1),
          child: Container(
            // height: 37,
            decoration: Style.sectionToggleBoxDecoration(
                radius: 10, isGradient: false, color: Style.orange),
            child: Center(
              child: Text(
                "Done",
                style: context.textTheme.titleMedium?.copyWith(
                  color: Style.scaffoldBackground,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        dimens.k30.horizontalBoxPadding(),
      ],
    );
  }
}