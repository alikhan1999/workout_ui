


import 'package:azz_medical_web/constant/style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class DatePickerBooking extends StatelessWidget {
   const DatePickerBooking({super.key,required this.dob, required this.onTap, this.text = true  });
final DateTime dob ;
final VoidCallback onTap;
final bool text;



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       text ?  const Text(
          'Date of birth',
          style: TextStyle(fontSize: 16, color: Style.black),
        ): const SizedBox.shrink(),
        const SizedBox(height: 6 ),

        Container(
          //height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: text? Colors.transparent : Style.textTitleColor.withOpacity(0.07)  ,
              borderRadius: BorderRadius.circular(text ? 10 :20),
              border: Border.all(color:text ? Style.greyColor: Style.textTitleColor.withOpacity(0.2), width: 2)),
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding:
               EdgeInsets.symmetric(vertical: text? 18: 15, horizontal:   12),
              child: Text(
                //'${_bookingController.selectedDate.toLocal()}'.split(' ')[0],
                DateFormat('MM-dd-yyyy').format(dob),
                style: const TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
