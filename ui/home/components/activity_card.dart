
import 'package:azz_medical_web/constant/const_imports/const_imports.dart';



class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppStrings.activityStatistic,
          style: context.textTheme.titleMedium?.copyWith(
            color: Style.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),

        ElevatedButton(
          onPressed: () {
            context.pushNamed(RoutePath.createAppointmentScreen);
          },
          style: ElevatedButton.styleFrom(
              surfaceTintColor: Colors.yellow,
              shadowColor: Colors.red.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
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
                "Set Goal",
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
       
      ],
    );
  }
}
