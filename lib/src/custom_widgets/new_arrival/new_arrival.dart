import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
    this.title,
    this.offer,
    this.subtitle,
  }) : super(key: key);

  final String? title;
  final String? offer;
  final String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180.h,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 103, 103, 103),
            image: DecorationImage(image: NetworkImage("https://thumbs.dreamstime.com/b/hanger-blank-t-shirt-color-background-hanger-blank-t-shirt-color-background-mockup-design-121529272.jpg"),fit: BoxFit.cover)
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 20.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      offer!,
                      style: GoogleFonts.rubik(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title!,
                      style: GoogleFonts.rubik(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: const Center(
                          child: Icon(Icons.arrow_forward_rounded)),
                    ),
                  ],
                ),
                Text(
                  subtitle!,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
