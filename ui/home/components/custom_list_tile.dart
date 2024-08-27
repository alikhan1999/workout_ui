
import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/constant/text_style/text_style.dart';

class CustomListTile extends StatelessWidget {
  final String leadingImage;
  final String title;
  final Color startColor;
  final Color endColor;
  final VoidCallback voidCallback;

  const CustomListTile(
      {super.key,
      required this.leadingImage,
      required this.title,
      required this.startColor,
      required this.endColor,
      required this.voidCallback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: voidCallback,
      child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [startColor, endColor],
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              )),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 10, height: 56),
              // Image.asset(
              //   leadingImage,
              //   width: 56,
              //   height: 56,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 38.0),
                child: Text(
                  title,
                  style: headingTextStyle.copyWith(
                      color: Style.whiteColor, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          )),
    );
  }
}
