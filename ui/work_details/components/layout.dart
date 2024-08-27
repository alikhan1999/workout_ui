
import 'package:azz_medical_web/application/core/extensions/extensions.dart';
import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

import 'package:azz_medical_web/ui/base/base_widget.dart';
import 'package:azz_medical_web/ui/work_details/components/choose_exercise.dart';
import 'package:azz_medical_web/ui/work_details/components/exercise_days_card.dart';

class Layout extends BaseStateFullWidget {
  final List<WorkoutModel> workoutModel;
 final  Function callback;
  Layout({super.key, required this.workoutModel, required this.callback});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Monday, Feb 16, 2024",
              style: context.textTheme.titleMedium?.copyWith(
                color: Style.black,
                fontWeight: FontWeight.bold,
                fontSize: context.textTheme.bodySmall?.fontSize,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: context.textTheme.titleMedium?.copyWith(
                  color: Style.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: context.textTheme.bodySmall?.fontSize,
                ),
              ),
            )
          ],
        ),

        widget.dimens.k20.verticalBoxPadding(),
        ExerciseDaysCard(),
        widget.dimens.k20.verticalBoxPadding(),
        const Text(
          AppStrings.selectExercises,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Style.primaryColor),
        ),
        const SizedBox(height: 10),
        ChooseExercise(workoutModel: widget.workoutModel, callback:(value)=> widget.callback(value)),
      ],
    );
  }
}