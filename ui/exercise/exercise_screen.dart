import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/ui/exercise/components/bottom_button.dart';

class ExerciseScreen extends BaseStateFullWidget {
  ExerciseScreen({super.key});

  @override
  ExerciseScreenState createState() => ExerciseScreenState();
}

class ExerciseScreenState extends State<ExerciseScreen> implements Result {
  @override
  Widget build(BuildContext context) {
    return BaseScaffoldWithBaseContainer(
        appBar: AppBarWidget(
          title: AppStrings.myExercises,
          itemColor: Style.whiteColor,
          leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back_ios, color: Style.blackColor),
          ),
        ),
        scroll: false,
        padding: EdgeInsets.zero,
        boxDecoration: Style.sectionBoxGradientDecoration(),
        bottomNavBar: BottomButton(),
        body: LayoutBuilder(builder: (layoutContext, con) {
          return BaseContainer(
            padding: EdgeInsets.symmetric(horizontal: widget.dimens.k20),
            scroll: true,
            width: con.maxWidth,
            height: con.maxHeight,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: con.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      widget.dimens.k50.verticalBoxPadding(),
                      SizedBox(
                        width: con.maxWidth > 600
                            ? widget.dimens.k600
                            : widget.dimens.k300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CarouselView(),
                            Text(
                              "Day 7 Advance Work Out Routine",
                              textAlign: TextAlign.left,
                              style: context.textTheme.headlineSmall?.copyWith(
                                  color: Style.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: widget.dimens.k20),
                            ),
                            widget.dimens.k10.horizontalBoxPadding(),
                            Text(
                              "4min 20sec",
                              textAlign: TextAlign.center,
                              style: context.textTheme.headlineSmall?.copyWith(
                                  color: Style.black,
                                  fontSize: widget.dimens.k15),
                            ),
                            widget.dimens.k10.horizontalBoxPadding(),
                            Text(
                              "Run around your house for about 10 mins, and rest for about 2 mins. Do this for 3 reps, and you’re done with day 1",
                              textAlign: TextAlign.left,
                              style: context.textTheme.headlineSmall?.copyWith(
                                  color: Style.black,
                                  fontSize: widget.dimens.k15),
                            ),
                            widget.dimens.k30.verticalBoxPadding(),
                            ExerciseCard(),
                            widget.dimens.k30.verticalBoxPadding(),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          );
        }));
  }

  @override
  void dispose() {
    super.dispose();
  }

  kOutlineInputBorder({Color? color}) => OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Style.black),
      borderRadius: BorderRadius.circular(widget.dimens.k15));

  @override
  onError(Failure error) {
    String serverError = ErrorMessage.fromError(error).message.toString();
    Fluttertoast.showToast(msg: serverError);
  }

  @override
  onSuccess(result) {
    context.pushReplacementNamed(RoutePath.homeScreen);
  }
}
