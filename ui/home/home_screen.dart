
import 'package:azz_medical_web/constant/const_imports/const_imports.dart';







class HomeScreen extends BaseStateFullWidget {
  HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWithBaseContainer(
      appBar: AppBarWidget(
        title: AppStrings.setWorkoutGoal,
        itemColor: Style.whiteColor,
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back_ios, color: Style.black)),
      ),
      bodyColor: Style.bgColor,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      scroll: true,
      body: SafeArea(
        child: Column(
          children: [
            widget.dimens.k10.verticalBoxPadding(),
            const ActivityCard(),
            widget.dimens.k10.verticalBoxPadding(),
            StatisticCard(),
            widget.dimens.k15.verticalBoxPadding(),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.summary,
                style: context.textTheme.titleMedium?.copyWith(
                  color: Style.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            widget.dimens.k10.verticalBoxPadding(),
            SummaryCard(),
            widget.dimens.k15.verticalBoxPadding(),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppStrings.myProgram,
                style: context.textTheme.titleMedium?.copyWith(
                  color: Style.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            MyProgramList(),
            widget.dimens.k10.verticalBoxPadding(),
          ],
        ),
      ),
    );
  }
}
