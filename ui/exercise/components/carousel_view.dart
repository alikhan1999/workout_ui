import 'package:azz_medical_web/constant/const_imports/const_imports.dart';
import 'package:azz_medical_web/ui/widgets/list_wheel_ScrollView_x.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({super.key});

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  int selectedIndex= 0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: 250,
      child: ListWheelScrollViewX(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemExtent: 200,
          onSelectedItemChanged: (index){
            setState(() {
              selectedIndex = index  ;
            });
          },
          children:List.generate(10,

                (index){
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: index == selectedIndex ? context.width : 400,
                height: index == selectedIndex ? 100 : 70,

                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    color: index == selectedIndex ? Colors.red : Colors.grey,
                    image: const DecorationImage(image: AssetImage("assets/images/demo2.png"),fit: BoxFit.cover, )

                ),

              );



            },)
      ),
    );
  }
}