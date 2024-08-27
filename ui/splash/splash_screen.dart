


import 'package:azz_medical_web/constant/Images/const_image.dart';
import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class SplashScreen extends StatefulWidget with BaseMixin{
  SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(duration: const Duration(milliseconds: 4000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    animation.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        // bool isExist = await SharedPref.checkIfKeyExistsInSharedPref(AppConstants.token);

        // if (isExist) {
        context.pushReplacementNamed(RoutePath.homeScreen);


      } else {

      }

    });
    //this will start the animation
    controller.forward();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [


              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.26,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.18,
                    ),
                    child: FadeTransition(
                      opacity: animation,
                      child: Image.asset(
                        AppConstImages.newLogo,
                        // color: Style.primaryColor,
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.4,
                        // fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
