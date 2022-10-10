import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:truequation_assignment/src/custom_widgets/new_arrival/new_arrival.dart';

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.h,
      width: MediaQuery.of(context).size.width.w,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 54, 54, 54),
        image: DecorationImage(image: NetworkImage("https://i.pinimg.com/736x/81/87/aa/8187aacdae9c5c3a6ecd988d8760f362.jpg"),fit: BoxFit.cover,opacity: 10)
      ),
      child: Column(
        children: [
          SizedBox(height: 25.h,),
          Text('50%',style: GoogleFonts.josefinSans(
            fontSize: 60.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          SizedBox(height: 20.h,),
          Container(
            color: Colors.grey,
            height: 30.h,
            width: 150.w,
            child: Center(
              child: Text('SPECIAL OFFER',style: GoogleFonts.josefinSans(
                fontSize: 14.sp,
                color: const Color.fromARGB(255, 58, 57, 57),
                fontWeight: FontWeight.bold
              ),),
            ),
          ),
          SizedBox(height: 15.h,),
          Text('SUMMER \n   SALE',style: GoogleFonts.josefinSans(
            fontSize: 22.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 70.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Shop now',style: GoogleFonts.josefinSans(
                fontSize: 16.sp,
                color: Colors.white,
              ),),
               const Icon(Icons.arrow_right_rounded,color: Colors.white,),
            ],
          ),
          
        ],
      ),
    );
  }
}