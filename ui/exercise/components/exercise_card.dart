import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class ExerciseCard extends StatelessWidget with BaseMixin {
  ExerciseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              IconButton(
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  onPressed: () {},
                  icon: const Icon(
                    // widget.workoutModel[index].viewed
                    // ?
                    Icons.check_circle,
                    // : Icons.circle_outlined,
                    size: 25,
                    color: Style.orange,
                  )),
              Text(
                "${index + 1} Reps",
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: Style.black, fontSize: dimens.k15),
              ),
              Text(
                "  10 mins 2 sec",
                textAlign: TextAlign.center,
                style: context.textTheme.headlineSmall
                    ?.copyWith(color: Style.orange, fontSize: dimens.k15),
              ),
            ],
          ),
        );
      }),
    );
  }
}
