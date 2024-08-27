import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/ui/work_details/components/bottom_button.dart';

class WorkoutDetailScreen extends BaseStateFullWidget {
  WorkoutDetailScreen({super.key});

  @override
  WorkoutDetailScreenState createState() => WorkoutDetailScreenState();
}

class WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWithBaseContainer(
      scroll: true,
      padding: EdgeInsets.zero,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavBar: const BottomButton(),
      appBar: AppBarWidget(
        title: AppStrings.workoutDetail,
        itemColor: Style.whiteColor,
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back_ios, color: Style.black)),
      ),
      body: SafeArea(
        child: Semantics(
          label:
              'Select Procedures, Causes and Insurances to find providers accordingly',
          child: LayoutBuilder(builder: (context, constraints) {
            final deviceWidth = MediaQuery.of(context).size.width;
            return BodyContainer(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(22),
                physics: const BouncingScrollPhysics(),
                child: deviceWidth > 500
                    ? Row(
                        children: [
                          const Expanded(
                            child: SizedBox(),
                          ),
                          SizedBox(
                            width: 500,
                            child: Layout(
                              workoutModel: WorkoutModel.exerciseDetail,
                              callback: (value) => setState(() => WorkoutModel
                                      .exerciseDetail[value].viewed =
                                  !WorkoutModel.exerciseDetail[value].viewed),
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          )
                        ],
                      )
                    : Layout(
                        workoutModel: WorkoutModel.exerciseDetail,
                        callback: (value) => setState(() =>
                            WorkoutModel.exerciseDetail[value].viewed =
                                !WorkoutModel.exerciseDetail[value].viewed),
                      ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
