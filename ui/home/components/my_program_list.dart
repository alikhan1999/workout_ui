import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class MyProgramList extends StatelessWidget with BaseMixin {
  MyProgramList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      shrinkWrap: true,
      primary: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(children: [
          Expanded(
            child: Container(
                height: 130, decoration: Style.containerRadiusWithImage()),
          ),
          dimens.k10.horizontalBoxPadding(),
          Expanded(
              child: Column(
            children: [
              Text(
                "Overhead Bar Extensions",
                style: context.textTheme.titleMedium?.copyWith(
                  color: Style.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.play_circle_outline),
                  dimens.k10.horizontalBoxPadding(),
                  Text(
                    "4 minutes left",
                    style: context.textTheme.titleMedium?.copyWith(
                      color: Style.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),)
        ]);
      },
      separatorBuilder: (BuildContext context, int index) =>
          dimens.k15.verticalBoxPadding(),
    );
  }
}
