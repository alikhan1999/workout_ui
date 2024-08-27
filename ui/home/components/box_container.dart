

import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/constant/text_style/text_style.dart';

class BoxContainer extends BaseStateFullWidget {
  BoxContainer(
      {super.key,
        required this.voidCallback,
        required this.title,
        required this.data});

  final VoidCallback voidCallback;
  final String title;
  final IconData data;

  @override
  State<BoxContainer> createState() => BoxContainerState();
}

class BoxContainerState extends State<BoxContainer> {
  bool buttonState = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.voidCallback,
      onHover: (value) {
        setState(() {
          buttonState = value;
        });
      },
      style: ElevatedButton.styleFrom(
        // highlightColor: Style.primaryColor,
        // hoverColor: Style.primaryColor,
        shadowColor: Style.greyColor,
        elevation: 0,
        // splashColor: Style.greyColor,
        padding: const EdgeInsets.all(8),
        backgroundColor: Style.primaryColor,
        foregroundColor: Style.greyColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        splashFactory: InkRipple.splashFactory,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(widget.data,
              color: Colors.white,
              size: MediaQuery.of(context).size.height * 0.07),
          Text(
            widget.title,
            style: headingTextStyle.copyWith(
                color: Style.whiteColor,
                fontWeight: FontWeight.w600,
                fontSize: MediaQuery.of(context).textScaler.scale(16)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}