import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class ChooseExercise extends StatelessWidget with BaseMixin {
  final List<WorkoutModel> workoutModel;
  final Function callback;
  ChooseExercise({Key? key ,required this.workoutModel,required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: workoutModel.length,
      shrinkWrap: true,
      primary: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(children: [
          Expanded(
            child: Row(
              children: [
                IconButton(
                    visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -4),
                    onPressed: () => callback(index),
                    icon: Icon(
                      workoutModel[index].viewed
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      size: 25,
                      color: Style.orange,
                    )),
                Container(
                    height: 100,
                    // width: context.width,
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width  *0.3
                    ),
                    decoration: Style.containerRadiusWithImage(
                        filePath: "assets/images/demo1.png")),
              ],
            ),
          ),
          dimens.k10.horizontalBoxPadding(),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    workoutModel[index].title,
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.play_circle_outline),
                      dimens.k10.horizontalBoxPadding(),
                      Text(
                        workoutModel[index].videoLength,
                        style: context.textTheme.titleMedium?.copyWith(
                          color: Style.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ))
        ]);
        // Assuming SlotContainer requires a Slot object
      },
      separatorBuilder: (BuildContext context, int index) =>
          dimens.k15.verticalBoxPadding(),
    );
  }
}