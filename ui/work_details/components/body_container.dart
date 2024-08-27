import 'package:azz_medical_web/constant/const_imports/const_imports.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color:     Style.whiteColor,

      child: child,
    );
  }
}

BoxDecoration containerDecoration() => BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Style.primaryColor.withOpacity(0.1),
      Style.secondaryColor.withOpacity(0.01)
    ],
  ),
);