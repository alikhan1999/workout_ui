import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class ExerciseDaysCard extends StatelessWidget with BaseMixin {
  ExerciseDaysCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 30,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          primary: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, int index) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: Style.containerRadius(
                  color: index == 4 ? Style.orange : Style.appGreyColor,
                  radius: 10),
              child: Text(
                "Day $index",
                style: context.textTheme.titleMedium?.copyWith(
                  color: index == 4 ?Style.whiteColor :Style.black,
                  fontWeight: FontWeight.normal,
                  fontSize: context.textTheme.bodySmall?.fontSize,
                ),
              ),
            );
          },
          separatorBuilder: (context, int index) =>
              dimens.k10.horizontalBoxPadding(),
          itemCount: 10),
    );
  }
}