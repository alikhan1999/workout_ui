import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class StatisticCard extends StatelessWidget with BaseMixin {
  StatisticCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: Style.containerRadius(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.calories,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.black,
                      fontWeight: FontWeight.bold,
                      fontSize: context.textTheme.bodySmall?.fontSize,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '160,56',
                      style: TextStyle(
                        fontSize: context.textTheme.bodySmall?.fontSize,
                        color: Style.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "kCal",
                          style: TextStyle(
                            fontSize: context.textTheme.bodySmall?.fontSize,
                            color: Style.textColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  dimens.k30.verticalBoxPadding(),
                  Text(
                    AppStrings.timeSpend,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.black,
                      fontWeight: FontWeight.bold,
                      fontSize: context.textTheme.bodySmall?.fontSize,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: '12:29:84',
                      style: TextStyle(
                        fontSize: context.textTheme.bodySmall?.fontSize,
                        color: Style.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "",
                          style: TextStyle(
                            fontSize: context.textTheme.bodyLarge?.fontSize,
                            color: Style.textColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 12,
                          height: 40,
                          decoration:
                          Style.containerRadius(color: Style.orange),
                        ),
                        dimens.k10.verticalBoxPadding(),
                        Text(
                          AppStrings.sunday,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Style.black,
                            fontWeight: FontWeight.normal,
                            fontSize: context.textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 12,
                          height: 40,
                          decoration:
                          Style.containerRadius(color: Style.orange),
                        ),
                        dimens.k10.verticalBoxPadding(),
                        Text(
                          AppStrings.monday,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Style.black,
                            fontWeight: FontWeight.normal,
                            fontSize: context.textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 12,
                          height: 60,
                          decoration:
                          Style.containerRadius(color: Style.orange),
                        ),
                        dimens.k10.verticalBoxPadding(),
                        Text(
                          AppStrings.sunday,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Style.black,
                            fontWeight: FontWeight.normal,
                            fontSize: context.textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 12,
                          height: 20,
                          decoration:
                          Style.containerRadius(color: Style.orange),
                        ),
                        dimens.k10.verticalBoxPadding(),
                        Text(
                          AppStrings.monday,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Style.black,
                            fontWeight: FontWeight.normal,
                            fontSize: context.textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 12,
                          height: 95,
                          decoration:
                          Style.containerRadius(color: Style.greenColor),
                        ),
                        dimens.k10.verticalBoxPadding(),
                        Text(
                          AppStrings.sunday,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Style.black,
                            fontWeight: FontWeight.normal,
                            fontSize: context.textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 12,
                          height: 90,
                          decoration:
                          Style.containerRadius(color: Style.orange),
                        ),
                        dimens.k10.verticalBoxPadding(),
                        Text(
                          AppStrings.monday,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Style.black,
                            fontWeight: FontWeight.normal,
                            fontSize: context.textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 12,
                          height: 95,
                          decoration:
                          Style.containerRadius(color: Style.greenColor),
                        ),
                        dimens.k10.verticalBoxPadding(),
                        Text(
                          AppStrings.sunday,
                          style: context.textTheme.titleMedium?.copyWith(
                            color: Style.black,
                            fontWeight: FontWeight.normal,
                            fontSize: context.textTheme.bodySmall?.fontSize,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}