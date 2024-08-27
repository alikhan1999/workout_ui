import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SummaryCard extends StatelessWidget with BaseMixin {
  SummaryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: Style.containerRadius(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.overallProgress,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  dimens.k18.verticalBoxPadding(),
                  CircularPercentIndicator(
                    radius: 80.0,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 30.0,
                    percent: 0.4,
                    center: const Text(
                      "25 %",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.butt,
                    backgroundColor: Style.progressRadiusColor,
                    progressColor: Style.progressPercentRadiusColor,
                  ),
                  dimens.k20.verticalBoxPadding(),
                ],
              ),
            )),
        dimens.k20.horizontalBoxPadding(),
        Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: Style.containerRadius(color: Style.orange),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.mealGuide,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.scaffoldBackgroundlight,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  dimens.k20.verticalBoxPadding(),
                  Text(
                    "8 am",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.scaffoldBackgroundlight,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Meal.breakfast.name.capitalize(),
                        style: context.textTheme.titleMedium?.copyWith(
                          color: Style.scaffoldBackgroundlight,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline,
                              color: Style.scaffoldBackgroundlight))
                    ],
                  ),
                  Text(
                    "12 am",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.scaffoldBackgroundlight,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Meal.lunch.name.capitalize(),
                        style: context.textTheme.titleMedium?.copyWith(
                          color: Style.scaffoldBackgroundlight,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline,
                              color: Style.scaffoldBackgroundlight))
                    ],
                  ),
                  Text(
                    "6 pm",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.scaffoldBackgroundlight,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Meal.dinner.name.capitalize(),
                        style: context.textTheme.titleMedium?.copyWith(
                          color: Style.scaffoldBackgroundlight,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.info_outline,
                              color: Style.scaffoldBackgroundlight))
                    ],
                  ),
                  dimens.k10.verticalBoxPadding(),
                ],
              ),
            ))
      ],
    );
  }
}